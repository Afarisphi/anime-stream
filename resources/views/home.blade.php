@extends('layouts.app')

@section('content')
    {{-- <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div> --}}

    <!-- Hero Section Begin -->
    <section class="hero" style="margin-top: -30px; background: #0b0c2a;">
        <div class="container">
            <div class="hero__slider owl-carousel">
                @foreach ($shows as $show)
                    <div class="hero__items set-bg" data-setbg="{{ asset('assets/img/' . $show->image . '') }}">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="hero__text">
                                    <div class="label">{{ $show->genre }}</div>
                                    <h2>{{ $show->name }}</h2>
                                    <p>{{ implode(' ', array_slice(str_word_count($show->description, 1), 0, 25)) }}</p>
                                    <a href="{{ route('anime.watching', ['show_id' => $show->id, 'episode_id' => 1]) }}"><span>Watch
                                            Now</span> <i class="fa fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach

            </div>
        </div>
    </section>
    <!-- Hero Section End -->


    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="trending__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Trending Now</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @foreach ($trendingShows as $show)
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"
                                            data-setbg="{{ asset('assets/img/' . $show->image . '') }}">
                                            <div class="ep">18 / 18</div>
                                            {{-- <div class="comment"><i class="fa fa-comments"></i> {{ $numberComments }}</div>
                                            <div class="view"><i class="fa fa-eye"></i> {{ $numberViews }}</div> --}}
                                        </div>
                                        <div class="product__item__text">
                                            <ul>
                                                <li>{{ $show->status }}</li>
                                                <li>{{ $show->type }}</li>
                                            </ul>
                                            <h5><a href="{{ route('anime.details', $show->id) }}">{{ $show->name }}</a>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                    <div class="popular__product">
                        <div class="row">

                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Adventure Shows</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @foreach ($trendingAdventure as $show)
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"
                                            data-setbg="{{ asset('assets/img/' . $show->image . '') }}">
                                            <div class="ep">18 / 18</div>
                                            {{-- <div class="comment"><i class="fa fa-comments"></i> {{ $numberComments }}</div>
                                            <div class="view"><i class="fa fa-eye"></i> {{ $numberViews }}</div> --}}
                                        </div>
                                        <div class="product__item__text">
                                            <ul>
                                                <li>{{ $show->status }}</li>
                                                <li>{{ $show->type }}</li>
                                            </ul>
                                            <h5><a href="{{ route('anime.details', $show->id) }}">{{ $show->name }}</a>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            @endforeach


                        </div>
                    </div>
                    <div class="recent__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Recently Added Shows</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            @foreach ($recentShows as $show)
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"
                                            data-setbg="{{ asset('assets/img/' . $show->image . '') }}" alt="">
                                            <div class="ep">18 / 18</div>
                                            {{-- <div class="comment"><i class="fa fa-comments"></i> {{ $numberComments }}</div>
                                            <div class="view"><i class="fa fa-eye"></i> {{ $numberViews }}</div> --}}
                                        </div>
                                        <div class="product__item__text">
                                            <ul>
                                                <li>{{ $show->status }}</li>
                                                <li>{{ $show->type }}</li>
                                            </ul>
                                            <h5><a href="{{ route('anime.details', $show->id) }}">{{ $show->name }}</a>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            @endforeach

                        </div>
                    </div>
                    {{-- <div class="live__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Live Action</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="#" class="primary-btn">View All <span class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-1.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Shouwa Genroku Rakugo Shinjuu</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-2.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-3.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Mushishi Zoku Shou: Suzu no Shizuku</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-4.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-5.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Fate/stay night Movie: Heaven's Feel - II. Lost</a></h5>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="img/live/live-6.jpg">
                                        <div class="ep">18 / 18</div>
                                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>Active</li>
                                            <li>Movie</li>
                                        </ul>
                                        <h5><a href="#">Kizumonogatari II: Nekketsu-hen</a></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> --}}
                </div>
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="product__sidebar">
                        <div class="product__sidebar__view">
                        </div>
                    </div>
                    <div class="product__sidebar__comment">
                        <div class="section-title">
                            <h5>For You</h5>
                        </div>
                        @foreach ($forYouShows as $show)
                            <div class="product__sidebar__comment__item">
                                <div class="product__sidebar__comment__item__pic"
                                    style="position: relative; width: 150px; height: 200px; overflow: hidden;">
                                    <img src="{{ asset('assets/img/' . $show->image . '') }}" alt="{{ $show->name }}"
                                        style="position: absolute; top: 50%; left: 50%; width: auto; height: 100%; transform: translate(-50%, -50%);">
                                </div>
                                <div class="product__sidebar__comment__item__text">
                                    <ul>
                                        <li>{{ $show->status }}</li>
                                        <li>{{ $show->type }}</li>
                                    </ul>
                                    <h5><a href="{{ route('anime.details', $show->id) }}">{{ $show->name }}</a></h5>
                                    {{-- <span><i class="fa fa-eye"></i> {{ $numberViews }} Viewes</span> --}}
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Product Section End -->
@endsection
