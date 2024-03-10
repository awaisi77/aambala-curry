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
                                    <div class="col-8">
                                        <h3 class="mb-0">Attendance</h3>
                                    </div>
                                    <div class="col-4 text-right">
                                        @if(count($attendances) > 0)
                                            @foreach($attendances as $attendance)
                                                @if($attendance->check_in &&  $attendance->check_out)
                                                    @break
                                                @else
                                                    @if(date('d M Y', strtotime($attendance->check_in)) ==  date('d M Y', strtotime($todayDate)))
                                                        <a class="btn btn-icon btn-1 btn-sm btn-outline-danger" href="{{route('checkOut-attendance',$attendance->id)}}">
                                                            Check-Out
                                                        </a>

                                                    @else
                                                        <a class="btn btn-icon btn-1 btn-sm btn-outline-success" href="{{route('checkIn',\Illuminate\Support\Facades\Auth::user()->id)}}">
                                                            Check-In
                                                        </a>
                                                    @endif

                                                @endif
                                            @endforeach
                                        @else
                                            <a class="btn btn-icon btn-1 btn-sm btn-outline-success" href="{{route('checkIn',\Illuminate\Support\Facades\Auth::user()->id)}}">
                                                Check-In
                                            </a>
                                        @endif

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
                                    <th scope="col">Day & Date</th>
                                    @hasrole('admin|driver')
                                    <th scope="col">Check-In time</th>
                                    <th scope="col">Check-Out time</th>
                                    <th scope="col">Status</th>
                                    @endhasrole
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($attendances as $attendance)
                                    <tr>
                                        <td>
                                            {{date('D d M Y', strtotime($attendance->check_in))}}
                                        </td>

                                        <th scope="row">
                                            {{date('h:i:s A', strtotime($attendance->check_in))}}
                                        </th>

                                        <td class="table-web">
                                            {{ ($attendance->check_out)?date('h:i:s A', strtotime($attendance->check_out)):'Click on Check Out'}}
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
                            <h4>You don`t have any attendance Record...</h4>
                        @endif
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.footers.auth')
{{--        @include('orders.partials.modals')--}}
    </div>
@endsection

