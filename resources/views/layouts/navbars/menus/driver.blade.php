<ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('home') }}">
                        <i class="ni ni-basket text-orange"></i> {{ __('Orders') }}
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('attendance.index') }}">
                        <i class="ni ni-single-02 text-blue"></i> Attendance
                    </a>
                </li>
                <li class="nav-item mb-5" style="position: absolute; bottom: 0;">
                    <a class="nav-link" href="/" target="_blank">
                        <i class="ni ni-world"></i> {{ __('Visit Site') }}
                    </a>
                </li>
            </ul>
