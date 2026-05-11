import{r as o}from"./registerComponent-4cde538b.js";import{p as c}from"./placeholder-2f8fb3e8.js";const d=""+new URL("h6_courses_bg-b0aa5374.webp",import.meta.url).href,u=""+new URL("course-six-c0a437eb.webp",import.meta.url).href,b=()=>{let t="";for(let a=0;a<4;a++)t+=`
            <div class="col-xl-3 col-lg-4 col-md-6">
                <div class="courses__item-seven">
                    <div class="courses__item-thumb-six">
                        <a href="#"><img
                                src="${c}" alt="Course Title"></a>
                        <a href="javascript:;" class="wsus-wishlist-btn common-white courses__wishlist-two"
                            aria-label="WishList">
                            <i class="far fa-heart"></i>
                        </a>
                        <a href="#"
                            class="courses__item-tag-three">Category</a>
                        <div class="courses__review">
                            <div class="rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span>(5)</span>
                        </div>
                    </div>
                    <div class="courses__item-content-six">
                        <div class="courses__item-content-six-top">
                            <h2 class="title"><a
                                    href="#">John doe</a>
                            </h2>
                                <h3 class="price">$99.00</h3>
                        </div>
                        <span>Professional Tutor</span>
                        <ul class="courses__item-meta-two list-wrap">
                                <li>English <img
                                        src="${baseUrl}/frontend/img/icons/graph.svg" alt=""
                                        class="injectable"></li>
                        </ul>
                        <p>Course Title</p>
                    </div>
                    <div class="courses__item-bottom-three courses__item-bottom-four">
                        <ul class="list-wrap">
                            <li><i class="flaticon-book"></i>Lessons 21</li>
                            <li><i class="flaticon-mortarboard"></i>Students 999</li>
                        </ul>
                    </div>
                </div>
            </div>
        `;return t},l=(t,a,r=!1)=>`
    <div class="tab-pane fade ${r?"show active":""}" id="${t}-tab-pane" role="tabpanel" aria-labelledby="${t}-tab" tabindex="0">
        <div class="row justify-content-center">
            ${b()}
        </div>
    </div>
`,m=(t,{folderName:a,fileName:r},n)=>{o({editor:t,name:r,category:a,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"courses-area-five section-py-140 courses__bg-four"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],sub_title:"Top Class Courses",title:"Explore Our World's Best Courses",description:"Check out the most demanding courses right now",btnText:"See All Courses",background_img:d,script:function(){SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;this.swiperInstance=null,e.on("change:sub_title change:title change:description change:btnText change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent(),e.bgUpdate(),this.applyRules(this,!0)},updateContent(){const e=`
                    <div class="container home_language">
                        <div class="row justify-content-center">
                            <div class="col-lg-9 col-xl-8 col-xxl-6">
                                <div class="section__title text-center mb-50">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title bold">${this.get("title")}</h2>
                                    <p class="desc">${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:course-six -->
                            <div class="row justify-content-center mb-50">
                                <div class="courses__nav-two">
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
                        <div class="view-all-btn view-all-categories">
                            <a href="{{ route('courses') }}"><span>${this.get("btnText")}</span><img
                                    src="${n}/frontend/img/icons/right_arrow.svg" alt="" class="injectable"></a>
                        </div>
                    </div>
                `;this.components(e),this.applyRules(this,!0)},bgUpdate(){const e=this.get("background_img")||"";this.addAttributes({"data-background":e}),this.addStyle({"background-image":`url('${e}')`})},applyRules(e,s=!1){e.set({editable:!1,draggable:s,droppable:!1,copyable:s,selectable:s}),e.components().forEach(i=>this.applyRules(i))}}})};export{m as default};
