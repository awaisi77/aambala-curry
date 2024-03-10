@extends('layouts.app', ['title' => __('Attendance')])

@section('content')
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    </div>
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col">
                <div class="card shadow">
                    <div class="card-header border-0">
                        {{--                        @if(count($attendances))--}}
                        <div class="row align-items-center">
                            <div class="col-6">
                                <h3 class="mb-0">Attendance</h3>
                            </div>
                            <div class="col-md-6">
                                <form method="GET" action="{{ route('attendance.index') }}">
                                <div class="form-group">
                                    <label class="form-control-label" for="driver">{{ __('Filter by Driver') }}</label>
                                    <select class="form-control select2" name="driver_id">
                                        <option disabled selected value> -- {{ __('Select an option') }} -- </option>
                                        @foreach ($drivers as $driver)
                                            <option <?php if(isset($_GET['driver_id'])&&$_GET['driver_id'].""==$driver->id.""){echo "selected";} ?>   value="{{ $driver->id }}">{{$driver->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                    <div class="col-md-6">
                                        <button type="submit" class="btn btn-primary btn-md btn-block">{{ __('Filter') }}</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <br/>
                        {{--                        @endif--}}
                    </div>
                    <div class="col-12">
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                    </div>
                    @if(count($attendances))
                        <div class="table-responsive">
                            <table class="table align-items-center">
                                <thead class="thead-light">
                                <tr>
                                    <th scope="col">Driver Name</th>
                                    <th scope="col">Day & Date</th>
                                    <th scope="col">Check-In time</th>
                                    <th scope="col">Check-Out time</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($attendances as $attendance)
                                    <tr>
                                        <th scope="row">
                                            @foreach($drivers as $driver)
                                                @if($driver->id == $attendance->driver_id)
                                                    {{$driver->name}}
                                                @endif
                                            @endforeach
                                        </th>
                                        <td>
                                            {{ ($attendance->status == 1)?date('D d M Y', strtotime($attendance->check_in)):date('D d M Y', strtotime($attendance->created_at))}}
                                        </td>

                                        <th scope="row">
                                            {{ ($attendance->check_in)?date('h:i:s A', strtotime($attendance->check_in)):'Have not checked In'}}
                                        </th>

                                        <td class="table-web">
                                            {{ ($attendance->check_out)?date('h:i:s A', strtotime($attendance->check_out)):'Have not checked out'}}
                                        </td>
                                        <td class="table-web">

                                            @if($attendance->status == 0)
                                                <button type="button" class="btn btn-icon btn-1 btn-sm btn-outline-danger">
                                                    Absent
                                                </button>
                                            @elseif($attendance->status == 1)
                                                <button type="button" class="btn btn-icon btn-1 btn-sm btn-outline-success">
                                                    Present
                                                </button>
                                            @elseif($attendance->status == 2)
                                                <button type="button" class="btn btn-icon btn-1 btn-sm btn-outline-primary">
                                                    On-Duty
                                                </button>
                                            @elseif($attendance->status == 3)
                                                <button type="button" class="btn btn-icon btn-1 btn-sm btn-outline-warning">
                                                    Leave
                                                </button>
                                            @endif

                                        </td>
                                        <td class="table-web">
                                            @if($attendance->status == 0)
                                                <a href="{{route('checkOut-attendance',$attendance->id)}}" class="btn btn-icon btn-1 btn-sm btn-outline-warning">
                                                    Mark leave
                                                </a>
                                            @else
                                                <a href="{{route('checkOut-attendance',$attendance->id)}}" class="btn btn-icon btn-1 btn-sm btn-outline-danger">
                                                    Mark absent
                                                </a>
                                            @endif
                                        </td>
                                    </tr>
                                </tbody>
                                @endforeach
                            </table>
                        </div>
                    @endif
                    <div class="card-footer py-4">
                        @if(count($attendances))
                            {{--                            <nav class="d-flex justify-content-end" aria-label="...">--}}
                            {{--                                {{ $attendances->appends(Request::all())->links() }}--}}
                            {{--                            </nav>--}}
                        @else
                            <h4>No attendance Record found...</h4>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.footers.auth')
        {{--        @include('orders.partials.modals')--}}
    </div>
@endsection

