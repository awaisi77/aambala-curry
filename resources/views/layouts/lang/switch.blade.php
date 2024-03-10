@switch(app()->getLocale())
    @case('en')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/british.png') }}" alt="">
    @break
    @case('ar')
    <img width="35px" height="25px" src="{{ asset('languagesIcons/ar.png') }}" alt="">
    @break
    @case('tr')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/turky.png') }}" alt="">
    @break
    @case('fr')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/fr.png') }}" alt="">
    @break
    @case('de')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/de.png') }}" alt="">
    @break
    @case('nl')
    <img width="35px" height="25px" src="{{ asset('languagesIcons/nl.png') }}" alt="">
    @break
    @case('it')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/it.png') }}" alt="">
    @break
    @case('pt')
    <img width="35px" height="25px" src="{{ asset('languagesIcons/pt.png') }}" alt="">
    @break
    @case('mk')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/mk.png') }}" alt="">
    @break
    @case('ru')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/ru.png') }}" alt="">
    @break
    @case('es')
    <img width="25px" height="25px" src="{{ asset('languagesIcons/es.png') }}" alt="">
    @break
    @default
    <img width="25px" height="25px" src="{{ asset('languagesIcons/british.png') }}" alt="">
    @break
@endswitch