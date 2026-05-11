import{r as o}from"./registerComponent-4cde538b.js";import{p as n}from"./placeholder-2f8fb3e8.js";const r=""+new URL("blog-14e746b3.webp",import.meta.url).href,c=(l=4)=>{let e="";for(let a=0;a<l;a++)e+=`
            <div class="col-xl-3 col-md-6">
                <div class="blog__post-item shine__animate-item">
                    <div class="blog__post-thumb">
                        <a href="/blogs" class="shine__animate-link"><img src="${n}" alt="img"/></a>
                        <a href="/blogs" class="post-tag">Marketing</a>
                    </div>
                    <div class="blog__post-content">
                        <div class="blog__post-meta">
                            <ul class="list-wrap">
                                <li><i class="flaticon-calendar"></i>20 July, 2024</li>
                                <li>
                                <i class="flaticon-user-1"></i>by
                                <a href="#">Admin</a>
                                </li>
                            </ul>
                        </div>
                        <h4 class="title"><a href="/blogs">Blog Title</a></h4>
                    </div>
                </div>
            </div>
        `;return e},d=(l,{folderName:e,fileName:a})=>{o({editor:l,name:a,category:e,media:`<img src="${r}"/>`,model:{defaults:{tagName:"section",attributes:{class:"blog__post-area"},traits:[{name:"total",label:"Total Blog",type:"number",min:1,changeProp:!0},{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0}],total:4,sub_title:"News & Blogs",title:"Our Latest News Feed",description:"when known printer took a galley of type scrambl edmake"},init(){const t=this;t.on("change:total change:sub_title change:title change:description",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-6">
                                <div class="section__title text-center mb-40">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                    <p>${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:blog total=${this.get("total")} -->
                        <div class="row gutter-20">
                            ${c(parseInt(this.get("total")))}
                        </div>
                        <!-- DYNAMIC_PART_END -->
                    </div>
                    
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,s=!1){t.set({editable:!1,draggable:s,droppable:!1,copyable:s,selectable:s}),t.components().forEach(i=>this.applyRules(i))}}})};export{d as default};
