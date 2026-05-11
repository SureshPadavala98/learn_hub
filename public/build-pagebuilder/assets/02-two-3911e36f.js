import{r as n}from"./registerComponent-4cde538b.js";import{p as c}from"./placeholder-2f8fb3e8.js";const d=""+new URL("h3_courses_bg-e064ff64.webp",import.meta.url).href,u=""+new URL("course-two-4aa872da.webp",import.meta.url).href,p=()=>{let t="";for(let a=0;a<5;a++)t+=`
            <div class="swiper-slide">
                <div class="courses__item-four shine__animate-item">
                    <div class="courses__item-thumb-three shine__animate-link">
                        <a href="#"><img src="${c}" alt="img"></a>
                        <span class="courses__price">$99.00</span>
                    </div>
                    <div class="courses__item-content-three">
                        <ul class="courses__item-meta list-wrap">
                            <li class="courses__item-tag">
                                <a href="#">Category</a>
                            </li>
                            <li class="courses__wishlist">
                                <a  href="javascript:;" class="wsus-wishlist-btn"  aria-label="WishList">
                                    <i class="far fa-heart"></i>
                                </a>
                            </li>
                        </ul>
                        <h2 class="title"><a href="#">Course Title</a></h2>
                        <div class="courses__review">
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(5 Reviews)</span>
                        </div>
                        <div class="courses__item-bottom-three">
                            <ul class="list-wrap">
                                <li><i class="flaticon-book"></i>Lessons 21</li>
                                <li><i class="flaticon-mortarboard"></i>Students 999</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        `;return t},b=`
    <div class="courses__nav">
        <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
        <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
    </div>
`,l=(t,a,o=!1)=>`
    <div class="tab-pane fade ${o?"show active":""}" id="${t}-tab-pane" role="tabpanel" aria-labelledby="${t}-tab" tabindex="0">
        <div class="swiper courses-swiper-active">
            <div class="swiper-wrapper">
                ${p()}
            </div>
        </div>
        ${b}
    </div>
`,m=(t,{folderName:a,fileName:o},i)=>{n({editor:t,name:o,category:a,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"courses-area-two tg-motion-effects courses__bg"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],sub_title:"Top Class Courses",title:"Explore Our World's Best Courses",description:"When known printer took a galley of type scrambled make",btnText:"See All Courses",background_img:d,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),new Swiper(".courses-swiper-active",{slidesPerView:4,spaceBetween:30,observer:!0,observeParents:!0,loop:!1,breakpoints:{1400:{slidesPerView:4},1200:{slidesPerView:3},992:{slidesPerView:3,spaceBetween:24},768:{slidesPerView:2,spaceBetween:24},576:{slidesPerView:1},0:{slidesPerView:1}},navigation:{nextEl:".courses-button-next",prevEl:".courses-button-prev"}}),e();function e(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const e=this;this.swiperInstance=null,e.on("change:sub_title change:title change:description change:btnText change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                    <div class="container home_university">
                        <div class="section__title-wrap">
                            <div class="row justify-content-center">
                                <div class="section__title text-center mb-50">
                                    <span class="sub-title" data-aos="fade-up" data-aos-delay="200">${this.get("sub_title")}</span>
                                    <h2 class="title" data-aos="fade-up" data-aos-delay="400">${this.get("title")}</h2>
                                    <p data-aos="fade-up" data-aos-delay="600">${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:course-two -->
                        <div class="row justify-content-center mb-60">
                            <div class="courses__nav">
                                <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                    ${[{id:"all",label:"All Course"},{id:"design",label:"Web Design"},{id:"business",label:"Business"},{id:"development",label:"Development"}].map((s,r)=>`
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link ${r===0?"active":""}" id="${s.id}-tab" data-bs-toggle="tab" data-bs-target="#${s.id}-tab-pane"
                                                type="button" role="tab" aria-controls="${s.id}-tab-pane" aria-selected="${r===0}">
                                                ${s.label}
                                            </button>
                                        </li>
                                    `).join("")}
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content" id="courseTabContent">
                            ${l("all","All Courses",!0)}
                            ${l("design")}
                            ${l("business")}
                            ${l("development")}
                        </div>
                        <!-- DYNAMIC_PART_END -->
                        <div class="view__courses-btn text-center mt-30">
                            <a href="{{ route('courses') }}" class="btn arrow-btn">${this.get("btnText")} <img src="${i}/frontend/img/icons/right_arrow.svg" alt="" class="injectable"></a>
                        </div>
                        <div class="courses__shape-wrap">
                            <img src="${i}/frontend/img/courses/h3_course_shape01.svg" alt="shape" class="tg-motion-effects1">
                            <img src="${i}/frontend/img/courses/h3_course_shape02.svg" alt="shape" class="tg-motion-effects4">
                            <img src="${i}/frontend/img/courses/h3_course_shape03.svg" alt="shape" class="alltuchtopdown">
                            <img src="${i}/frontend/img/courses/h3_course_shape04.svg" alt="shape" class="tg-motion-effects5">
                        </div>
                    </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,s=!1){e.set({editable:!1,draggable:s,droppable:!1,copyable:s,selectable:s}),e.components().forEach(r=>this.applyRules(r))}}})};export{m as default};
