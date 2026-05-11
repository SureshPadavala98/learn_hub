<style>
/* Icon color (black instead of purple) */
.features__icon img{
    filter: brightness(0) saturate(100%);
}

/* Title color */
.features__content .title{
    color:#1b1b2d;
}

/* Description color */
.features__content p{
    color:#6c6c80;
}
</style>
<section class="features__area-seven grey-bg-two">
    <div class="container">
        <div class="features__item-wrap-four">
            <div class="row justify-content-center">

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="features__item text-center">
                        <div class="features__icon">
                            <img src="{{ asset($ourFeatures?->global_content?->image_one) }}" class="injectable" alt="img">
                        </div>
                        <div class="features__content">
                            <h4 class="title">{{ $ourFeatures?->content?->title_one }}</h4>
                            <p>{{ $ourFeatures?->content?->sub_title_one }}</p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="features__item text-center">
                        <div class="features__icon">
                            <img src="{{ asset($ourFeatures?->global_content?->image_two) }}" class="injectable" alt="img">
                        </div>
                        <div class="features__content">
                            <h4 class="title">{{ $ourFeatures?->content?->title_two }}</h4>
                            <p>{{ $ourFeatures?->content?->sub_title_two }}</p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="features__item text-center">
                        <div class="features__icon">
                            <img src="{{ asset($ourFeatures?->global_content?->image_three) }}" class="injectable" alt="img">
                        </div>
                        <div class="features__content">
                            <h4 class="title">{{ $ourFeatures?->content?->title_three }}</h4>
                            <p>{{ $ourFeatures?->content?->sub_title_three }}</p>
                        </div>
                    </div>
                </div>

                <div class="col-xl-3 col-lg-4 col-md-6">
                    <div class="features__item text-center">
                        <div class="features__icon">
                            <img src="{{ asset($ourFeatures?->global_content?->image_four) }}" class="injectable" alt="img">
                        </div>
                        <div class="features__content">
                            <h4 class="title">{{ $ourFeatures?->content?->title_four }}</h4>
                            <p>{{ $ourFeatures?->content?->sub_title_four }}</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>