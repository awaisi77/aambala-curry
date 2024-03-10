<div class="card card-profile shadow">
    <div class="px-4">
      <div class="mt-5">
        <h3>{{ __('Who are you?') }}<span class="font-weight-light"></span></h3>
      </div>
      <div class="card-content border-top">
        <br />
       
        <div class="custom-control custom-radio mb-3">

          <label for="name">{{ __('Name') }}</label>
          @error('name')
          <span class="font-weight-bold text-danger">
            {{ $message }}
          </span>
          @enderror
          <input required name="name" value="{{ old('name') }}" class="form-control @error('name') is-invalid @enderror" id="name" type="text" placeholder="Your Name here" checked>
        </div>
        <div class="custom-control custom-radio mb-3">
          <label for="email">{{ __('Email') }}</label>
          @error('email')
          <span class="font-weight-bold text-danger">
            {{ $message }}
          </span>
          @enderror
          <input required name="email" value="{{ old('email') }}" class="form-control @error('email') is-invalid @enderror" id="email" type="email" placeholder="Your Email here" required>
        </div>
        <div class="custom-control custom-radio mb-3">
          <label for="phone">{{ __('Phone') }}</label>
          @error('phone')
          <span class="font-weight-bold text-danger">
            {{ $message }}
          </span>
          @enderror
          <input required name="phone" value="{{ old('phone') }}" class="form-control @error('phone') is-invalid @enderror" id="phone" type="number" placeholder="Your Phone Number" checked>
        </div>

      </div>
      <br />
      <br />
    </div>
  </div>
  <br />