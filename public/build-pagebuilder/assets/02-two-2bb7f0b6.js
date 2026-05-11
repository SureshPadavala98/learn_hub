import{r as c}from"./registerComponent-4cde538b.js";import{b as o}from"./become_student-3fb760e9.js";const l=""+new URL("h7_cta_bg-cc80a1b0.webp",import.meta.url).href,g=""+new URL("calll-to-action-three-8c1d43a5.webp",import.meta.url).href,h=(n,{folderName:i,fileName:r},e)=>{c({editor:n,name:r,category:i,media:`<img src="${g}"/>`,model:{defaults:{tagName:"section",attributes:{class:"cta__area-three"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"link",label:"Title",type:"text",changeProp:!0},{name:"btn_text",label:"Title",type:"text",changeProp:!0},{name:"banner_img",label:"Banner Image",type:"image-upload",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],title:"Finding Your Right Courses",description:"Unlock your potential by joining our vibrant learning community",link:`${e}/register`,btn_text:"Get Started",banner_img:o,background_img:l,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")})}},init(){const t=this;t.on("change:title change:description change:link change:btn_text change:banner_img change:background_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <div class="cta__bg-three" data-background="${this.get("background_img")}">
                                <div class="cta__img-two">
                                    <img src="${this.get("banner_img")}" alt="${this.get("title")}">
                                </div>
                                <div class="cta__content-three">
                                    <div class="content__left">
                                        <h2 class="title">${this.get("title")}</h2>
                                        <p>${this.get("description")}}</p>
                                    </div>
                                    <a href="${this.get("link")}" class="btn arrow-btn">${this.get("btn_text")} <img src="${e}/frontend/img/icons/right_arrow.svg" alt="${this.get("btn_text")}" class="injectable"></a>
                                </div>
                                <div class="cta__shape-two">
                                    <img src="${e}/frontend/img/others/h7_cta_shape.svg" alt="shape">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(s=>this.applyRules(s))}}})};export{h as default};
