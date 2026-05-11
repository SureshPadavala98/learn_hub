import{r as o}from"./registerComponent-4cde538b.js";import{p as r}from"./testimonial-1-be0bf31b.js";const c=""+new URL("testimonial-five-3c9d14d4.webp",import.meta.url).href,p=(a,{folderName:l,fileName:n},s)=>{o({editor:a,name:n,category:l,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"home_language testimonial__area-five section-pb-130"},traits:[{name:"total",label:"Total Testimonial",type:"number",min:1,changeProp:!0},{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"textarea",changeProp:!0}],total:4,sub_title:"Our Testimonials",title:"What Students Think and Say About Us",script:function(){new Swiper(".testimonial-active-four",{slidesPerView:1,spaceBetween:30,observer:!0,observeParents:!0,loop:!0,breakpoints:{1500:{slidesPerView:1},1200:{slidesPerView:1},992:{slidesPerView:1,spaceBetween:24},768:{slidesPerView:1,spaceBetween:24},576:{slidesPerView:1},0:{slidesPerView:1}},pagination:{el:".testimonial-pagination",clickable:!0}}),e();function e(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const e=this;e.on("change:total change:sub_title change:title",()=>{e.updateContent(),e.view.render()}),e.updateContent()},generateHTML(e){let t="";for(let i=0;i<e;i++)t+=`
                    <div class="swiper-slide">
                        <div class="container">
                            <div class="row align-items-center justify-content-center">
                                <div class="col-xl-5 col-lg-6 col-md-8">
                                    <div class="testimonial__img-three tg-svg">
                                        <div class="testimonial__mask-img">
                                            <img src="${r}" alt="img">
                                        </div>
                                        <div class="banner__review" data-aos="fade-left" data-aos-delay="1000">
                                            <div class="icon">
                                                <img src="${s}/frontend/img/icons/star.svg" alt=""
                                                    class="injectable">
                                            </div>
                                            <h6 class="title">5/5
                                                <span>Real Reviews</span>
                                            </h6>
                                        </div>
                                        <div class="testimonial__img-icon">
                                            <img src="${s}/frontend/img/icons/quote02.svg" alt=""
                                                class="injectable">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-7 col-lg-6">
                                    <div class="testimonial__content-three">
                                        <div class="section__title mb-25">
                                            <span class="sub-title">${this.get("sub_title")}</span>
                                            <h2 class="title bold">${this.get("title")}</h2>
                                        </div>
                                        <div class="testimonial__item-four">
                                            <div class="rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <p>“ I was hesitant about online learning at first, but this platform has completely changed my mind. The courses are well-organized and informative, ”</p>
                                            <div class="testimonial__bottom-two">
                                                <h4 class="title">Brooklyn Simmons</h4>
                                                <span>Engineer</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    `;return t},updateContent(){const e=`
                <div class="swiper-container testimonial-active-four">
                    <div class="swiper-wrapper">
                        <!-- DYNAMIC_PART_START:testimonial-five total=${this.get("total")} subTitle="${this.get("sub_title")}" title="${this.get("title")}" -->
                            ${this.generateHTML(parseInt(this.get("total")))}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                    <div class="testimonial-pagination testimonial-pagination-two"></div>
                </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(i=>this.applyRules(i))}}})};export{p as default};
