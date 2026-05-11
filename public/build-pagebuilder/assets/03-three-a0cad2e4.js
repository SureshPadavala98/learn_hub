import{r}from"./registerComponent-4cde538b.js";import{p as o}from"./default-avatar-3f3b7603.js";const c=""+new URL("testimonial-three-2179e220.webp",import.meta.url).href,g=(s,{folderName:n,fileName:l},i)=>{r({editor:s,name:l,category:n,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"testimonial__area-three youga_testimonial section-py-140 testimonial__bg-two"},traits:[{name:"total",label:"Total Testimonial",type:"number",min:1,changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],total:4,background_img:`${i}/frontend/img/bg/h4_testimonial_bg.jpg`,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),SVGInject(document.querySelectorAll("img.injectable")),new Swiper(".testimonial-active-three",{slidesPerView:1,spaceBetween:30,observer:!0,observeParents:!0,loop:!0,breakpoints:{1500:{slidesPerView:1},1200:{slidesPerView:1},992:{slidesPerView:1,spaceBetween:24},768:{slidesPerView:1,spaceBetween:24},576:{slidesPerView:1},0:{slidesPerView:1}},pagination:{el:".testimonial-pagination",clickable:!0}})}},init(){const e=this;e.on("change:total change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent()},generateHTML(e){let t="";for(let a=0;a<e;a++)t+=`
                    <div class="swiper-slide">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-lg-6 col-md-10">
                                <div class="testimonial__img">
                                    <img src="${o}"
                                        alt="img">
                                    <div class="shape">
                                        <img src="${i}/frontend/img/others/testimonial_img_shape.svg"
                                            alt="shape" class="rotateme">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="testimonial__item-three">
                                    <div class="icon">
                                        <img src="${i}/frontend/img/icons/testi_icon.svg" alt=""
                                            class="injectable">
                                    </div>
                                    <div class="rating">
                                        <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                    </div>
                                    <p>“ I was hesitant about online learning at first, but this platform has completely changed my mind. The courses are well-organized and informative, ”</p>
                                    <div class="testimonial__bottom">
                                        <h4 class="title">Brooklyn Simmons</h4>
                                        <span>Engineer</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    `;return t},updateContent(){const e=`
                <div class="container">
                    <div class="swiper-container testimonial-active-three">
                        <div class="swiper-wrapper">
                            <!-- DYNAMIC_PART_START:testimonial-three total=${this.get("total")} -->
                                ${this.generateHTML(parseInt(this.get("total")))}
                            <!-- DYNAMIC_PART_END -->
                        </div>
                        <div class="testimonial-pagination"></div>
                    </div>
                </div>
                <div class="testimonial__shape">
                    <img src="${i}/frontend/img/others/h4_testimonial_shape.svg" alt="shape" class="rotateme">
                </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(a=>this.applyRules(a))}}})};export{g as default};
