import{r as n}from"./registerComponent-4cde538b.js";import{p as c}from"./placeholder-2f8fb3e8.js";const u=""+new URL("h4_courses_bg-3dd241f2.webp",import.meta.url).href,d=""+new URL("course-four-391dc4c6.webp",import.meta.url).href,b=()=>{let s="";for(let a=0;a<4;a++)s+=`
            <div class="col-xl-3 col-lg-4 col-md-6">
                <div class="courses__item-five shine__animate-item">
                    <div class="courses__item-thumb-four shine__animate-link">
                        <a href="#"><img src="${c}" alt="img"></a>

                        <span class="courses__price-two">$99.00</span>
                        <a  href="javascript:;" class="wsus-wishlist-btn courses__wishlist-two" >
                            <i class="far fa-heart"></i>
                        </a>
                    </div>
                    <div class="courses__item-content-four">
                        <ul class="courses__item-meta list-wrap">
                            <li class="courses__item-tag courses__item-tag-two">
                                <a
                                    href="#">Category</a>
                            </li>
                            <li class="avg-rating"><i class="fas fa-star"></i>
                                (5 Reviews)
                            </li>
                        </ul>
                        <h2 class="title"><a href="#">Course Title</a>
                        </h2>
                        <div class="courses__item-bottom-three">
                            <ul class="list-wrap">
                                <li><i class="flaticon-book"></i>Lessons 21</li>
                                <li><i class="flaticon-mortarboard"></i>Students 999</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        `;return s},l=(s,a,r=!1)=>`
    <div class="tab-pane fade ${r?"show active":""}" id="${s}-tab-pane" role="tabpanel" aria-labelledby="${s}-tab" tabindex="0">
        <div class="row gutter-24 justify-content-center">
            ${b()}
        </div>
    </div>
`,m=(s,{folderName:a,fileName:r},o)=>{n({editor:s,name:r,category:a,media:`<img src="${d}"/>`,model:{defaults:{tagName:"section",attributes:{class:"courses-area-three youga_course_area section-pt-140 section-pb-110 courses__bg-two"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],sub_title:"Top Class Courses",title:"Explore Our World's Best Courses",btnText:"Discover All Class",background_img:u,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;this.swiperInstance=null,e.on("change:sub_title change:title change:btnText change:background_img",()=>{e.updateContent()}),e.updateContent()},updateContent(){const e=`
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xxl-8 col-lg-10 col-md-12">
                                <div class="section__title text-center mb-50">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:course-four -->
                            <div class="row justify-content-center mb-50">
                                <div class="courses__nav-two">
                                    <ul class="nav nav-tabs" id="courseTab" role="tablist">
                                        ${[{id:"all",label:"All Course"},{id:"design",label:"Web Design"},{id:"business",label:"Business"},{id:"development",label:"Development"}].map((t,i)=>`
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link ${i===0?"active":""}" id="${t.id}-tab" data-bs-toggle="tab" data-bs-target="#${t.id}-tab-pane"
                                                    type="button" role="tab" aria-controls="${t.id}-tab-pane" aria-selected="${i===0}">
                                                    ${t.label}
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
                        <div class="discover-courses-btn-two text-center mt-30">
                            <a href="{{ route('courses') }}" class="btn arrow-btn btn-four">${this.get("btnText")} <img src="${o}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                        </div>
                    </div>
                    <div class="courses__shape-wrap-two">
                        <img src="${o}/frontend/img/others/h4_course_shape.svg" alt="shape" class="rotateme">
                        <img src="${o}/frontend/img/others/h4_course_shape.svg" alt="shape" class="rotateme">
                    </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(i=>this.applyRules(i))}}})};export{m as default};
