import{r as c}from"./registerComponent-4cde538b.js";import{p as i}from"./placeholder-2f8fb3e8.js";const n=""+new URL("blog-three-b4f629b3.webp",import.meta.url).href,g=(a=1)=>{let s="";for(let e=0;e<a;e++)s+=`
            <div class="col-lg-6">
                <div class="blog__post-item-two yoga_featured_blog">
                    <div class="blog__post-thumb-two">
                        <a href="https://skillgro.websolutionus.com/blog/top-classroom-resources-for-teachers">
                            <img src="${i}" alt="img">
                        </a>
                    </div>
                    <div class="blog__post-content-two">
                        <a href="https://skillgro.websolutionus.com/blog?category=evaluation" class="post-tag-two">
                            Evaluation
                        </a>
                        <div class="blog__post-meta blog__post-meta-two">
                            <ul class="list-wrap">
                                <li><i class="flaticon-calendar"></i>04 Jun, 2024</li>
                                <li><i class="flaticon-user-1"></i>by
                                    <a href="https://skillgro.websolutionus.com/blog/top-classroom-resources-for-teachers">
                                        Admin
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <h2 class="title">
                            <a href="https://skillgro.websolutionus.com/blog/top-classroom-resources-for-teachers">
                                Top Classroom Resources for Teachers
                            </a>
                        </h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="blog__post-item-three shine__animate-item">
                    <div class="blog__post-thumb-three">
                        <a href="£" class="shine__animate-link"><img src="${i}" alt="img"></a>
                    </div>
                    <div class="blog__post-content-three">
                        <a href="https://skillgro.websolutionus.com/blog?category=education" class="post-tag-two">Education</a>
                        <div class="blog__post-meta">
                            <ul class="list-wrap">
                                <li><i class="flaticon-calendar"></i>04 Jun, 2024</li>
                                <li><i class="flaticon-user-1"></i>by <a href="£">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <h2 class="title"><a href="£">Education</a>
                        </h2>
                    </div>
                </div>
                <div class="blog__post-item-three shine__animate-item">
                    <div class="blog__post-thumb-three">
                        <a href="£" class="shine__animate-link"><img src="${i}" alt="img"></a>
                    </div>
                    <div class="blog__post-content-three">
                        <a href="https://skillgro.websolutionus.com/blog?category=strategies" class="post-tag-two">Strategies</a>
                        <div class="blog__post-meta">
                            <ul class="list-wrap">
                                <li><i class="flaticon-calendar"></i>04 Jun, 2024</li>
                                <li><i class="flaticon-user-1"></i>by <a href="£">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <h2 class="title"><a href="£">Strategies</a>
                        </h2>
                    </div>
                </div>
            </div>
        `;return s},d=(a,{folderName:s,fileName:e},o)=>{c({editor:a,name:e,category:s,media:`<img src="${n}"/>`,model:{defaults:{tagName:"section",attributes:{class:"blog__post-area-four section-pt-140 section-pb-110"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0}],sub_title:"News & Blogs",title:"Our Latest News Feed",description:"when known printer took a galley of type scrambl edmake"},init(){const t=this;t.on("change:sub_title change:title change:description",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6">
                            <div class="section__title text-center mb-40">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- DYNAMIC_PART_START:blog-three total=3 -->
                            ${g()}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                <div class="blog__shape-wrap">
                    <img src="${o}/frontend/img/blog/h4_blog_shape.svg" alt="shape" class="rotateme">
                    <img src="${o}/frontend/img/blog/h4_blog_shape.svg" alt="shape" class="rotateme">
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,l=!1){t.set({editable:!1,draggable:l,droppable:!1,copyable:l,selectable:l}),t.components().forEach(r=>this.applyRules(r))}}})};export{d as default};
