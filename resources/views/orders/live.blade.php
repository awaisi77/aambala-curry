 <!-- Add to Cart   -->
 <script src="{{ asset('custom') }}/js/liveorders.js"></script>

@extends('layouts.app', ['title' => __('Orders')])

@section('content')
    <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
    <div class="container-fluid d-flex align-items-center">
        <div class="row">
            <div class="col-md-12 {{ $class ?? '' }}">
                <h1 style="display:inline"  class="display-2 text-white">{{ __("Live orders") }}</h1>



            </div>
        </div>
    </div>

    </div>



    <?php
                $tbNew=array(
                    array("image"=>"https://cdn.dribbble.com/users/1183222/screenshots/4786147/46_best_chef.png","title"=>"#12345  RESTORANT NAME","subtitle"=>"10:30 by Client Name - Street Adress","price"=>"45.00$ (4x Big Pizza )","status"=>"Just created","color"=>"success"),
                    array("image"=>"https://fiverr-res.cloudinary.com/images/t_main1,q_auto,f_auto/gigs/111740940/original/05e70581b2802cf56a0420ed94d0b41da760fc4c/design-an-awesome-restaurant-logo-within-1-day.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"10:20 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Accepted by restorant","color"=>"warning")
                );

                $tbPreparing=array(
                    array("image"=>"https://is5-ssl.mzstatic.com/image/thumb/Purple18/v4/b2/be/4a/b2be4a29-3eeb-8d72-4c4e-341239f86a63/source/512x512bb.jpg","title"=>"#12345  RESTORANT NAME","subtitle"=>"10:10 by Client Name - Street Adress","price"=>"45.00$ (4x Big Pizza )","status"=>"Preparing","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"10:00 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Prepared","color"=>"warning"),
                    array("image"=>"https://scontent-lga3-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/s640x640/79705229_154508779180149_8913090475091955399_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com&_nc_cat=109&_nc_ohc=3zPOsXP6ULUAX9lYcKF&oh=1baf82debd22245f299f908426e5afae&oe=5EA0CE60","title"=>"#12344  RESTORANT NAME","subtitle"=>"09:55 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Picked up by driver","color"=>"warning")
                );

                $tbDone=array(
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12345  RESTORANT NAME","subtitle"=>"09:30 by Client Name - Street Adress","price"=>"45.00$ (4x Big Pizza )","status"=>"Delivered","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"09:15 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Delivered","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12345  RESTORANT NAME","subtitle"=>"09:10 by Client Name - Street Adress","price"=>"45.00$ (4x Big Pizza )","status"=>"Delivered","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"09:00 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Delivered","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"08:55 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Rejected by client","color"=>"danger"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"08:34 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Delivered","color"=>"success"),
                    array("image"=>"https://i.imgur.com/BzRMINA.jpg","title"=>"#12344  RESTORANT NAME","subtitle"=>"08:22 by Client Name - Street Adress","price"=>"30.00$ (3x Big Pizza )","status"=>"Rejected by admin","color"=>"danger"),

                );

              ?>

    <div class="container-fluid mt--7">
    <div id="liveorders" class="row">
        
        
        <div class="col-xl-4">
          <!-- Members list group card -->
          <div class="card">
            <!-- Card header -->
            <div class="card-header">
              <!-- Title -->
              <h5 class="h3 mb-0">{{ __('New Orders')}}</h5>
            </div>
            <!-- Card body -->
            <div class="card-body">
              <!-- List group -->
              <ul class="list-group list-group-flush list my--3">

              
                <li v-for="item in neworders" class="list-group-item px-0">
                    
                    @include('orders.partials.liveitem')
                </li>

              </ul>
            </div>
          </div>
        </div>

        <div class="col-xl-4">
            <!-- Members list group card -->
            <div class="card">
              <!-- Card header -->
              <div class="card-header">
                <!-- Title -->
                <h5 class="h3 mb-0">{{ __('Accepted')}}</h5>
              </div>
              <!-- Card body -->
              <div class="card-body">
                <!-- List group -->
                <ul class="list-group list-group-flush list my--3">
  
                
                  <li v-for="item in accepted" class="list-group-item px-0">
                    @include('orders.partials.liveitem')
                  </li>
  
                </ul>
              </div>
            </div>
        </div>



        <div class="col-xl-4">
            <!-- Members list group card -->
            <div class="card">
              <!-- Card header -->
              <div class="card-header">
                <!-- Title -->
                <h5 class="h3 mb-0">{{ __('Done')}}</h5>
              </div>
              <!-- Card body -->
              <div class="card-body">
                <!-- List group -->
                <ul class="list-group list-group-flush list my--3">
  
                
                  <li v-for="item in done" class="list-group-item px-0">
                      @include('orders.partials.liveitem')
                  </li>
  
                </ul>
              </div>
            </div>
        </div>

          
      </div>
      


        @include('layouts.footers.auth')
    </div>
    <div class="modal fade modal-xl" id="modal-default" tabindex="-1" role="dialog" aria-labelledby="modal-default" aria-hidden="true">
    <div class="modal-dialog modal-l modal-dialog-centered" style="max-width:1140px" role="document">
        <div class="modal-content">

            <div class="modal-header">
                <h3 class="modal-title" id="modal-title-default">#123456  - February 8, 10:30 PM  </h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

            <div class="modal-body">
            <div class="row">
            <div class="col-md-7">
            <h4>Restorant Name<h4>
                <p>Address, Owner name, Owner phone, Owner email</p>
                <h4>Client Name<h4>
                <p>Address, Client phone, Client email</p>
                <h4>Order</h4>
                <p>
                    <ol>
                        <li>4x Pizza Family         20.00$</li>
                        <li>2x Bake Rools (extra: mashrooms, cheese)         20.00$</li>
                        <li>4x Trout Fish         20.00$</li>
                        <li>1x Macedonia Salas (extra: mashrooms, cheese)         20.00$</li>
                    </ol>
                </p>
                <h4>Delevery: 2,00 $<h4>
                <h4>Total<h4>
                <p>95.00 $</p>
            </div>
            <div class="col-md-5">
                    <div class="card">
                    <!-- Card header -->
                    <div class="card-header">
                    <!-- Title -->
                    <h5 class="h3 mb-0">{{ __("Status History")}}</h5>
                    </div>
                    <!-- Card body -->
                    <div class="card-body">
                    <div class="timeline timeline-one-side" data-timeline-content="axis" data-timeline-axis-style="dashed">
                        <div class="timeline-block">
                        <span class="timeline-step badge-success">
                            <i class="ni ni-bell-55"></i>
                        </span>
                        <div class="timeline-content">
                            <div class="d-flex justify-content-between pt-1">
                            <div>
                                <span class="text-muted text-sm font-weight-bold">Order received</span>
                            </div>
                            <div class="text-right">
                                <small class="text-muted"><i class="fas fa-clock mr-1"></i>2 hrs ago</small>
                            </div>
                            </div>
                            <h6 class="text-sm mt-1 mb-0">Client CLIENT_NAME makes the order</h6>
                        </div>
                        </div>
                        <div class="timeline-block">
                        <span class="timeline-step badge-danger">
                            <i class="ni ni-html5"></i>
                        </span>
                        <div class="timeline-content">
                            <div class="d-flex justify-content-between pt-1">
                            <div>
                                <span class="text-muted text-sm font-weight-bold">Order Accepted by Admin</span>
                            </div>
                            <div class="text-right">
                                <small class="text-muted"><i class="fas fa-clock mr-1"></i>3 hrs ago</small>
                            </div>
                            </div>
                            <h6 class="text-sm mt-1 mb-0">Admin review the order and accepts it.</h6>
                        </div>
                        </div>
                        <div class="timeline-block">
                            <span class="timeline-step badge-info">
                                <i class="ni ni-like-2"></i>
                            </span>
                            <div class="timeline-content">
                                <div class="d-flex justify-content-between pt-1">
                                <div>
                                    <span class="text-muted text-sm font-weight-bold">Order Accepted by Restorant</span>
                                </div>
                                <div class="text-right">
                                    <small class="text-muted"><i class="fas fa-clock mr-1"></i>5 hrs ago</small>
                                </div>
                                </div>
                                <h6 class="text-sm mt-1 mb-0">Restorant review the order and accepted</h6>
                            </div>
                        </div>
                        <div class="timeline-block">
                            <span class="timeline-step badge-info">
                                <i class="ni ni-like-2"></i>
                            </span>
                            <div class="timeline-content">
                                <div class="d-flex justify-content-between pt-1">
                                <div>
                                    <span class="text-muted text-sm font-weight-bold">Addmin assigns Driver</span>
                                </div>
                                <div class="text-right">
                                    <small class="text-muted"><i class="fas fa-clock mr-1"></i>5 hrs ago</small>
                                </div>
                                </div>
                                <h6 class="text-sm mt-1 mb-0">Order is assigned to driver DRIVER NAME</h6>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>

            </div>
            </div>




            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Accept</button>
                <button type="button" class="btn btn-primary">Assign to driver</button>
                <button type="button" class="btn btn-primary">Prepared</button>
                <button type="button" class="btn btn-danger">Reject</button>
                <button type="button" class="btn btn-link  ml-auto" data-dismiss="modal">Close</button>
            </div>

        </div>
        </div>
        </div>

@endsection
