import{r}from"./registerComponent-4cde538b.js";import{p as c}from"./default-avatar-3f3b7603.js";const o=""+new URL("instructor-3fda7c98.webp",import.meta.url).href,p=(s=4)=>{let e="";for(let a=0;a<s;a++)e+=`
            <div class="col-sm-6">
                <div class="instructor__item">
                    <div class="instructor__thumb">
                        <a href="#"><img src="${c}" alt="img"></a>
                    </div>
                    <div class="instructor__content">
                        <h2 class="title"><a href="#">John Doe</a></h2>
                        <span class="designation">UX Design Lead</span>
                        <p class="avg-rating">
                            <i class="fas fa-star"></i>
                            (5 Ratings)
                        </p>
                        <div class="instructor__social">
                            <ul class="list-wrap">
                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp"></i></a></li>
                                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        `;return e},h=(s,{folderName:e,fileName:a},n)=>{r({editor:s,name:a,category:e,media:`<img src="${o}"/>`,model:{defaults:{tagName:"section",attributes:{class:"instructor__area"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0}],sub_title:"Skilled Introduce",title:"Our Top Class & Expert Instructors in One Place",description:"when an unknown printer took a galley of type and scrambled makespecimen book has survived not only five centuries",btnLink:"/all-instructors",btnText:"See All Instructors"},init(){const t=this;t.on("change:sub_title change:title change:description change:btnLink change:btnText",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-4">
                                <div class="instructor__content-wrap">
                                    <div class="section__title mb-15">
                                        <span class="sub-title">${this.get("sub_title")}</span>
                                        <h2 class="title">${this.get("title")}</h2>
                                    </div>
                                    <p>${this.get("description")}</p>
                                    <div class="tg-button-wrap">
                                        <a href="${this.get("btnLink")}" class="btn arrow-btn">${this.get("btnText")} <img src="${n}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                                    </div>
                                </div>
                            </div>
                            <!-- DYNAMIC_PART_START:instructor -->
                            <div class="col-xl-8">
                                <div class="instructor__item-wrap">
                                    <div class="row">
                                        ${p()}
                                    </div>
                                </div>
                            </div>
                            <!-- DYNAMIC_PART_END -->
                        </div>
                    </div>
                
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,i=!1){t.set({editable:!1,draggable:i,droppable:!1,copyable:i,selectable:i}),t.components().forEach(l=>this.applyRules(l))}}})};export{h as default};
