import{r as o}from"./registerComponent-4cde538b.js";import{p as n}from"./placeholder-2f8fb3e8.js";const c=""+new URL("blog-five-45b48dbd.webp",import.meta.url).href,r=(s=3)=>{let e="";for(let a=0;a<s;a++)e+=`
            <div class="col-lg-4 col-md-6">
                <div class="blog__post-item-four shine__animate-item">
                    <div class="blog__post-thumb-four">
                        <a href="#" class="shine__animate-link"><img src="${n}" alt="img"></a>
                    </div>
                    <div class="blog__post-content-four">
                        <a href="#" class="post-tag-three">Education</a>
                        <h2 class="title"><a href="#">Latest Research in Educational Technology</a></h2>
                        <div class="blog__post-meta">
                            <ul class="list-wrap">
                                <li><i class="flaticon-user-1"></i>by <a href="javascript:;">Admin</a></li>
                                <li><i class="flaticon-calendar"></i>04 Jun, 2024</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        `;return e},g=(s,{folderName:e,fileName:a})=>{o({editor:s,name:a,category:e,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"blog__post-area-six section-pt-140 section-pb-110"},traits:[{name:"total",label:"Total Blog",type:"number",min:1,changeProp:!0},{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0}],total:3,sub_title:"News & Blogs",title:"Our Latest News Feed",description:"when known printer took a galley of type scrambl edmake"},init(){const t=this;t.on("change:total change:sub_title change:title change:description",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                <div class="container home_language">
                    <div class="row justify-content-center">
                        <div class="col-xl-6">
                            <div class="section__title text-center mb-50">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <!-- DYNAMIC_PART_START:blog-five total=${this.get("total")} -->
                            ${r(parseInt(this.get("total")))}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,l=!1){t.set({editable:!1,draggable:l,droppable:!1,copyable:l,selectable:l}),t.components().forEach(i=>this.applyRules(i))}}})};export{g as default};
