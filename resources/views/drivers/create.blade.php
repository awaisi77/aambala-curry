@extends('layouts.app', ['title' => __('Drivers Management')])

@section('content')
    @include('drivers.partials.header', ['title' => __('Add Driver')])

    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-12 order-xl-1">
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Drivers Management') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                                <a href="{{ route('drivers.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">


                            <h6 class="heading-small text-muted mb-4">{{ __('Driver information') }}</h6>
                            <div class="pl-lg-4">
                                <form method="post" action="{{ route('drivers.store') }}" autocomplete="off">
                                    @csrf
                            </div>
                            <div class="pl-lg-4">


                                <div class="form-group{{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-name">{{ __('Driver Name') }}</label>
                                    <input type="text" name="name_driver" id="input-name" class="form-control form-control-alternative" placeholder="{{ __('Driver Name') }}" value="" required>
                                </div>

                                <div class="form-group{{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-name">{{ __('Driver Email') }}</label>
                                    <input type="email" name="email_driver" id="input-name" class="form-control form-control-alternative" placeholder="{{ __('Driver Email') }}" value="" required>
                                </div>

                                <div class="form-group{{ $errors->has('name') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="input-name">{{ __('Driver Phone') }}</label>
                                    <input type="text" name="phone_driver" id="input-name" class="form-control form-control-alternative" placeholder="{{ __('Driver Phone') }}" value="" required>
                                </div>

                                <div class="text-center">
                                    <button type="submit" class="btn btn-success mt-4">{{ __('Save') }}</button>
                                </div>

                                </form>





                            </div>

                    </div>
                </div>
            </div>
        </div>

        @include('layouts.footers.auth')
    </div>
@endsection
