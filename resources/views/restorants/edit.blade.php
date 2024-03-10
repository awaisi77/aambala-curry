@extends('layouts.app', ['title' => __('Orders')])

@section('content')
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    </div>
    <div class="container-fluid mt--7">
        <div class="row">
            <div class="col-xl-7 ">
                <br/>
                <div class="card bg-secondary shadow">
                    <div class="card-header bg-white border-0">
                        <div class="row align-items-center">
                            <div class="col-8">
                                <h3 class="mb-0">{{ __('Restaurant Management') }}</h3>
                            </div>
                            <div class="col-4 text-right">
                            <a href="{{ route('restorants.index') }}" class="btn btn-sm btn-primary">{{ __('Back to list') }}</a>
                                @if(auth()->user()->hasRole('admin'))
                                    <a href="{{ route('items.admin', $restorant) }}" class="btn btn-sm btn-primary">View Items</a>
                                @endif
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                       <h6 class="heading-small text-muted mb-4">{{ __('Restaurant information') }}</h6>
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                {{ session('status') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif
                        <div class="pl-lg-4">
                            <form method="post" action="{{ route('restorants.update', $restorant) }}" autocomplete="off" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                    <input type="hidden" id="rid" value="{{ $restorant->id }}"/>
                                    <div class="form-group{{ $errors->has('name') ? ' has-danger' : '' }}">
                                        <label class="form-control-label" for="input-name">{{ __('Restaurant Name') }}</label>
                                        <input type="text" name="name" id="input-name" class="form-control form-control-alternative{{ $errors->has('name') ? ' is-invalid' : '' }}" placeholder="{{ __('Name') }}" value="{{ old('name', $restorant->name) }}" required autofocus>
                                        @if ($errors->has('name'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('name') }}</strong>
                                            </span>
                                        @endif
                                     </div>
                                    <div class="form-group{{ $errors->has('description') ? ' has-danger' : '' }}">
                                        <label class="form-control-label" for="input-description">{{ __('Restaurant Description') }}</label>
                                        <input type="text" name="description" id="input-description" class="form-control form-control-alternative{{ $errors->has('name') ? ' is-invalid' : '' }}" placeholder="{{ __('Description') }}" value="{{ old('description', $restorant->description) }}" required autofocus>
                                        @if ($errors->has('description'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('description') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group{{ $errors->has('minimum') ? ' has-danger' : '' }}">
                                        <label class="form-control-label" for="input-description">{{ __('Minimum order') }}</label>
                                        <input type="number" name="minimum" id="input-minimum" class="form-control form-control-alternative{{ $errors->has('minimum') ? ' is-invalid' : '' }}" placeholder="{{ __('Enter Minimum order value') }}" value="{{ old('minimum', $restorant->minimum) }}" required autofocus>
                                        @if ($errors->has('minimum'))
                                            <span class="invalid-feedback" role="alert">
                                                <strong>{{ $errors->first('minimum') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    @if(auth()->user()->hasRole('admin'))
                                        <br/>
                                        <div class="row">
                                            <div class="col-6 form-group{{ $errors->has('fee') ? ' has-danger' : '' }}">
                                                <label class="form-control-label" for="input-description">{{ __('Fee percent') }}</label>
                                                <input type="number" name="fee" id="input-fee" step="any" min="0" max="100" class="form-control form-control-alternative{{ $errors->has('fee') ? ' is-invalid' : '' }}" value="{{ old('fee', $restorant->fee) }}" required autofocus>
                                                @if ($errors->has('fee'))
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('fee') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                            <div class="col-6 form-group{{ $errors->has('static_fee') ? ' has-danger' : '' }}">
                                                <label class="form-control-label" for="input-description">{{ __('Static fee') }}</label>
                                                <input type="number" name="static_fee" id="input-fee" step="any" min="0" max="100" class="form-control form-control-alternative{{ $errors->has('static_fee') ? ' is-invalid' : '' }}" value="{{ old('static_fee', $restorant->static_fee) }}" required autofocus>
                                                @if ($errors->has('static_fee'))
                                                    <span class="invalid-feedback" role="alert">
                                                        <strong>{{ $errors->first('static_fee') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                        <br/>
                                    @endif
                                    <div class="row">
                                        <?php
                                            $images=[
                                                ['name'=>'resto_logo','label'=>__('Restaurant Image'),'value'=>$restorant->logom,'style'=>'width: 295px; height: 200px;'],
                                                ['name'=>'resto_cover','label'=>__('Restaurant Cover Image'),'value'=>$restorant->coverm,'style'=>'width: 200px; height: 100px;']
                                            ]
                                        ?>
                                        @foreach ($images as $image)
                                            <div class="col-md-6">
                                                @include('partials.images',$image)
                                            </div>
                                        @endforeach
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success mt-4">{{ __('Save') }}</button>
                                    </div>
                                </form>
                            </div>
                            <hr />
                            <h6 class="heading-small text-muted mb-4">{{ __('Owner information') }}</h6>
                            <div class="pl-lg-4">
                                <div class="form-group{{ $errors->has('name_owner') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="name_owner">{{ __('Owner Name') }}</label>
                                    <input type="text" name="name_owner" id="name_owner" class="form-control form-control-alternative" placeholder="{{ __('Owner Name') }}" value="{{ old('name', $restorant->user->name) }}" readonly>
                                </div>
                                <div class="form-group{{ $errors->has('email_owner') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="email_owner">{{ __('Owner Email') }}</label>
                                    <input type="text" name="email_owner" id="email_owner" class="form-control form-control-alternative" placeholder="{{ __('Owner Email') }}" value="{{ old('name', $restorant->user->email) }}" readonly>
                                </div>
                                <div class="form-group{{ $errors->has('phone_owner') ? ' has-danger' : '' }}">
                                    <label class="form-control-label" for="phone_owner">{{ __('Owner Phone') }}</label>
                                    <input type="text" name="phone_owner" id="phone_owner" class="form-control form-control-alternative" placeholder="{{ __('Owner Phone') }}" value="{{ old('name', $restorant->user->phone) }}" readonly>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 mb-5 mb-xl-0">
                    <br/>
                    <div class="card card-profile shadow">
                        <div class="card-header">
                            <h5 class="h3 mb-0">{{ __("Restaurant Location")}}</h5>
                        </div>
                        <div class="card-body">
                            <div id="map" class="form-control form-control-alternative"></div>
                        </div>
                    </div>
                    <br/>
                <div class="card card-profile bg-secondary shadow">
                    <div class="card-header">
                        <h5 class="h3 mb-0">{{ __("Working Hours")}}</h5>
                    </div>
                    <div class="card-body">
                        <form method="post" action="{{ route('restaurant.workinghours') }}" autocomplete="off" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" id="rid" name="rid" value="{{ $restorant->id }}"/>
                            <div class="form-group">
                                @foreach($days as $key => $value)
                                    <br/>
                                    <div class="row">
                                        <div class="col-4">
                                            <div class="custom-control custom-checkbox">
                                                <input type="checkbox" name="days" class="custom-control-input" id="{{ 'day'.$key }}" value={{ $key }}>
                                                <label class="custom-control-label" for="{{ 'day'.$key }}">{{ $value }}</label>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-time-alarm"></i></span>
                                                </div>
                                                <input id="{{ $key.'_from' }}" name="{{ $key.'_from' }}" class="flatpickr datetimepicker form-control" type="text" placeholder="{{ __('Time') }}">
                                            </div>
                                        </div>
                                        <div class="col-2 text-center">
                                            <p class="display-4">-</p>
                                        </div>
                                        <div class="col-3">
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="ni ni-time-alarm"></i></span>
                                                </div>
                                                <input id="{{ $key.'_to' }}" name="{{ $key.'_to' }}" class="flatpickr datetimepicker form-control" type="text" placeholder="{{ __('Time') }}">
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-success mt-4">{{ __('Save') }}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.footers.auth')
    </div>
@endsection

@section('js')
    <script async defer
        src= "https://maps.googleapis.com/maps/api/js?key=<?php echo env('GOOGLE_MAPS_API_KEY',''); ?>&callback=initRMap">
    </script>
    <script type="text/javascript">
        var defaultHourFrom = "09:00";
        var defaultHourTo = "17:00";

        var timeFormat = '{{ env('TIME_FORMAT','24hours') }}';

        function formatAMPM(date) {
            //var hours = date.getHours();
            //var minutes = date.getMinutes();
            var hours = date.split(':')[0];
            var minutes = date.split(':')[1];

            var ampm = hours >= 12 ? 'pm' : 'am';
            hours = hours % 12;
            hours = hours ? hours : 12; // the hour '0' should be '12'
            //minutes = minutes < 10 ? '0'+minutes : minutes;
            var strTime = hours + ':' + minutes + ' ' + ampm;
            return strTime;
        }

        //console.log(formatAMPM("19:05"));

        var config = {
            enableTime: true,
            dateFormat: timeFormat == "AM/PM" ? "h:i K": "H:i",
            noCalendar: true,
            altFormat: timeFormat == "AM/PM" ? "h:i K" : "H:i",
            altInput: true,
            allowInput: true,
            time_24hr: timeFormat == "AM/PM" ? false : true,
            onChange: [
                function(selectedDates, dateStr, instance){
                    //...
                    this._selDateStr = dateStr;
                },
            ],
            onClose: [
                function(selDates, dateStr, instance){
                    if (this.config.allowInput && this._input.value && this._input.value !== this._selDateStr) {
                        this.setDate(this.altInput.value, false);
                    }
                }
            ]
        };

        $("input[type='checkbox'][name='days']").change(function() {
            /*if(this.checked) {
                var returnVal = confirm("Are you sure?");
                $(this).prop("checked", returnVal);
            }
            $('#textbox1').val(this.checked);*/

            var hourFrom = flatpickr($('#'+ this.value + '_from'), config);
            var hourTo = flatpickr($('#'+ this.value + '_to'), config);

            if(this.checked){
                hourFrom.setDate(timeFormat == "AP/PM" ? formatAMPM(defaultHourFrom) : defaultHourFrom, false);
                hourTo.setDate(timeFormat == "AP/PM" ? formatAMPM(defaultHourTo) : defaultHourTo, false);
            }else{
                hourFrom.clear();
                hourTo.clear();
            }
        });

        var start = "https://cdn1.iconfinder.com/data/icons/Map-Markers-Icons-Demo-PNG/48/Map-Marker-Ball-Pink.png"
        var map = null;
        var markerData = null;
        var marker = null;
        var infoWindow = null;
        var lat = null;
        var lng = null;

        function getLocation(callback){
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type:'GET',
                url: '/get/rlocation/'+$('#rid').val(),
                success:function(response){
                    if(response.status){
                        return callback(true, response.data)
                    }
                }, error: function (response) {
                return callback(false, response.responseJSON.errMsg);
                }
            })
        }

        function changeLocation(lat, lng){
            //var latConv = parseFloat(lat.toString().substr(0, 5));
            //var lngConv = parseFloat(lng.toString().substr(0, 5));
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            $.ajax({
                type:'POST',
                url: '/updateres/location/'+$('#rid').val(),
                dataType: 'json',
                data: {
                    lat: lat,
                    lng: lng
                },
                success:function(response){
                    if(response.status){
                        console.log(response.status)
                    }
                }, error: function (response) {
                //alert(response.responseJSON.errMsg);
                }
            })
        }
        window.onload = function () {
            var map, infoWindow, marker, lng, lat;

            var workingHours = {!! json_encode($hours) !!};
            if(workingHours != null){
                Object.keys(workingHours).map((key, index)=>{
                    if(workingHours[key] != null){
                        var hour = flatpickr($('#'+key), config);
                        hour.setDate(workingHours[key], false);

                        var day_key = key.split('_')[0];
                        $('#day'+day_key).attr('checked', 'checked');
                    }
                })
            }

            getLocation(function(isFetched, currPost){
                if(isFetched){
                    infoWindow = new google.maps.InfoWindow;

                    if(currPost.lat != 0 && currPost.lng != 0){
                        //map.setCenter(currPost);
                        //marker.setPosition(currPost);

                        map = new google.maps.Map(document.getElementById('map'), {
                            zoom: 15,
                            center: new google.maps.LatLng(currPost.lat, currPost.lng)
                        });

                        var markerData = new google.maps.LatLng(currPost.lat, currPost.lng);
                        marker = new google.maps.Marker({
                            position: markerData,
                            map: map,
                            icon: start
                        });

                        map.addListener('click', function(event) {
                            var currPos = new google.maps.LatLng(event.latLng.lat(),event.latLng.lng());
                            marker.setPosition(currPos);

                            changeLocation(event.latLng.lat(), event.latLng.lng());
                        });
                    }else{
                        if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(function(position) {
                                var pos = { lat: position.coords.latitude, lng: position.coords.longitude };

                                //infoWindow.setPosition(pos);
                                //infoWindow.setContent('Location found.');
                                //infoWindow.open(map);

                                //map.setCenter(pos);
                                //marker.setPosition(pos);
                                //changeLocation(pos.lat, pos.lng);

                                map = new google.maps.Map(document.getElementById('map'), {
                                    zoom: 15,
                                    center: new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
                                });

                                var markerData = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
                                marker = new google.maps.Marker({
                                    position: markerData,
                                    map: map,
                                    icon: start
                                });

                                changeLocation(pos.lat, pos.lng);

                                map.addListener('click', function(event) {
                                    var currPos = new google.maps.LatLng(event.latLng.lat(),event.latLng.lng());
                                    marker.setPosition(currPos);

                                    changeLocation(event.latLng.lat(), event.latLng.lng());
                                });
                            }, function() {
                            // handleLocationError(true, infoWindow, map.getCenter());
                                map = new google.maps.Map(document.getElementById('map'), {
                                    zoom: 5,
                                    center: new google.maps.LatLng(54.5260, 15.2551)
                                });

                                var markerData = new google.maps.LatLng(54.5260, 15.2551);
                                marker = new google.maps.Marker({
                                    position: markerData,
                                    map: map,
                                    icon: start
                                });

                                map.addListener('click', function(event) {
                                    var currPos = new google.maps.LatLng(event.latLng.lat(),event.latLng.lng());
                                    marker.setPosition(currPos);

                                    changeLocation(event.latLng.lat(), event.latLng.lng());
                                });
                            });
                        } else {
                            // Browser doesn't support Geolocation
                            //handleLocationError(false, infoWindow, map.getCenter());
                        }
                    }
                }
            });
        }

        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ? 'Error: The Geolocation service failed.' : 'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }
    </script>
@endsection

