import{r as g}from"./registerComponent-4cde538b.js";const p=""+new URL("h8_cta_img-c040ab87.webp",import.meta.url).href,h=""+new URL("join-us-four-00db7843.webp",import.meta.url).href,m=(s,{folderName:r,fileName:c},n)=>{g({editor:s,name:c,category:r,media:`<img src="${h}"/>`,model:{defaults:{tagName:"section",attributes:{class:"cta__area-four"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"link",label:"Title",type:"text",changeProp:!0},{name:"btn_text",label:"Title",type:"text",changeProp:!0},{name:"banner_img",label:"Banner Image",type:"image-upload",changeProp:!0}],title:"Finding Your Right Courses",description:"Unlock your potential by joining our vibrant learning community",link:`${n}/register`,btn_text:"Get Started",banner_img:p,script:function(){var t=$(".tg-svg");t.each(function(){var e=$(this),a=e.find(".svg-icon"),i=a.attr("id"),o=a.data("svg-icon");if(i){var l=new Vivus(i,{duration:80,file:o});e.on("mouseenter",function(){l.reset().play()})}})}},init(){const t=this;t.on("change:title change:description change:link change:btn_text change:banner_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <div class="cta__inner-wrap">
                                <div class="cta__img-three tg-svg">
                                    <img src="${this.get("banner_img")}" alt="${this.get("title")}">
                                    <span class="svg-icon" id="cta-svg"
                                        data-svg-icon="${n}/frontend/img/others/rh8_cta_img_shape.svg"></span>
                                </div>
                                <div class="cta__content-three cta__content-four">
                                    <div class="content__left">
                                        <h2 class="title">${this.get("title")}</h2>
                                        <p>${this.get("description")}}</p>
                                    </div>
                                    <a href="${this.get("link")}" class="btn arrow-btn">${this.get("btn_text")} <img
                                            src="${n}/frontend/img/icons/right_arrow.svg" alt="${this.get("btn_text")}" class="injectable"></a>
                                </div>
                                <img src="${n}/frontend/img/others/h8_cta_shape.svg" alt="shape" class="shape">
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,e=!1){t.set({editable:!1,draggable:e,droppable:!1,copyable:e,selectable:e}),t.components().forEach(a=>this.applyRules(a))}}})};export{m as default};
