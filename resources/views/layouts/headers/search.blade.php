<section class="section-profile-cover section-shaped my-0 d-none d-md-none d-lg-block d-lx-block">
    <div class="row mt-5">
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-7"></div>
        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-5 my-5">
            <!-- Circles background -->
            <img class="bg-image" src="{{ config('global.search') }}" style="width: 100%;">

        </div>
      </div>
</section>
<section class="section">
    <div class="container mt--350">
        <h1>{{ __('Food Delivery from') }} <br> <b>{{ config('global.site_name') }}</b> </h1>
        <p>{{ __('The meals you love, delivered with care') }}</p>
        <div class="row mt-search">
            <div class="col-md-7">
              <form>
              <div class="form-group">
                <div class="input-group mb-4">
                  <div class="input-group-prepend">
                    <span class="input-group-text"><i class="ni ni-basket"></i></span>
                  </div>
                  <input name="q" class="form-control lg" value="{{ request()->get('q') }}" placeholder="{{ __ ('Search') }}" type="text">
                </div>
              </div>
            </div>

            <div class="col-md-4">
                <button type="submit" class="btn btn-danger">{{ __('Find your meal') }}</button>
            </div>
          </form>
        </div>
    </div>
</section>
