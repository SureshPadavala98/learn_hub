import{r as o}from"./registerComponent-4cde538b.js";import{p as c}from"./placeholder-2f8fb3e8.js";const d=""+new URL("course-50deb7d0.webp",import.meta.url).href,u=()=>{let t="";for(let a=0;a<5;a++)t+=`
            <div class="swiper-slide">
                <div class="courses__item shine__animate-item">
                    <div class="courses__item-thumb">
                        <a href="courses" class="shine__animate-link">
                            <img src="${c}" alt="img">
                        </a>
                        <a href="javascript:;" class="wsus-wishlist-btn common-white courses__wishlist-two" aria-label="WishList"><i class="far fa-heart"></i></a>
                    </div>
                    <div class="courses__item-content">
                        <ul class="courses__item-meta list-wrap">
                            <li class="courses__item-tag">
                                <a href="courses">Category</a>
                            </li>
                            <li class="avg-rating"><i class="fas fa-star"></i> (5 Reviews)</li>
                        </ul>
                        <h5 class="title"><a href="courses">Course Title</a></h5>
                        <p class="author">By <a href="#">John Doe</a></p>
                        <div class="courses__item-bottom">
                            <div class="button">
                                <a href="courses">
                                    <span class="text">${a%2===0?"Add To Cart":"Enroll Now"}</span>
                                    <i class="flaticon-arrow-right"></i>
                                </a>
                            </div>
                            <h5 class="price">$99.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        `;return t},p=`
    <div class="courses__nav">
        <div class="courses-button-prev"><i class="flaticon-arrow-right"></i></div>
        <div class="courses-button-next"><i class="flaticon-arrow-right"></i></div>
    </div>
`,l=(t,a,r=!1)=>`
    <div class="tab-pane fade ${r?"show active":""}" id="${t}-tab-pane" role="tabpanel" aria-labelledby="${t}-tab" tabindex="0">
        <div class="swiper courses-swiper-active">
            <div class="swiper-wrapper">
                ${u()}
            </div>
        </div>
        ${p}
    </div>
`,g=(t,{folderName:a,fileName:r},n)=>{o({editor:t,name:r,category:a,media:`<img src="${d}"/>`,model:{defaults:{tagName:"section",attributes:{class:"courses-area section-pt-120 section-pb-90"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],sub_title:"Top Class Courses",title:"Explore Our World's Best Courses",description:"When known printer took a galley of type scrambled make",background_img:`${n}/frontend/img/bg/courses_bg.jpg`,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),new Swiper(".courses-swiper-active",{slidesPerView:4,spaceBetween:30,observer:!0,observeParents:!0,loop:!1,breakpoints:{1400:{slidesPerView:4},1200:{slidesPerView:3},992:{slidesPerView:3,spaceBetween:24},768:{slidesPerView:2,spaceBetween:24},576:{slidesPerView:1},0:{slidesPerView:1}},navigation:{nextEl:".courses-button-next",prevEl:".courses-button-prev"}})}},init(){const e=this;this.swiperInstance=null,e.on("change:sub_title change:title change:description change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                    <div class="container">
                        <div class="section__title-wrap">
                            <div class="row justify-content-center">
                                <div class="col-lg-6">
                                    <div class="section__title text-center">
                                        <span class="sub-title" data-editable="true">${this.get("sub_title")}</span>
                                        <h2 class="title" data-editable="true">${this.get("title")}</h2>
                                        <p class="desc" data-editable="true">${this.get("description")}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:course -->
                        <div class="row justify-content-center mb-60">
                            <div class="courses__nav">
                                <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                    ${[{id:"all",label:"All Course"},{id:"design",label:"Web Design"},{id:"business",label:"Business"},{id:"development",label:"Development"}].map((s,i)=>`
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link ${i===0?"active":""}" id="${s.id}-tab" data-bs-toggle="tab" data-bs-target="#${s.id}-tab-pane"
                                                type="button" role="tab" aria-controls="${s.id}-tab-pane" aria-selected="${i===0}">
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
                    </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,s=!1){e.set({editable:!1,draggable:s,droppable:!1,copyable:s,selectable:s}),e.components().forEach(i=>this.applyRules(i))}}})};export{g as default};
