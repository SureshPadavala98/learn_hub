import{r as s}from"./registerComponent-4cde538b.js";const o=""+new URL("cta_bg-2cf87982.webp",import.meta.url).href,l=""+new URL("call-two-action-two-b181f228.webp",import.meta.url).href,d=(n,{folderName:i,fileName:r},a)=>{s({editor:n,name:r,category:i,media:`<img src="${l}"/>`,model:{defaults:{tagName:"section",attributes:{class:"cta__area home_3_cta"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"link",label:"Link",type:"text",changeProp:!0},{name:"btn_text",label:"Title",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],title:"Together We Go Far",description:"Through research and discovery, we are changing the world.",link:`${a}/register`,btn_text:"Join With Us",background_img:o,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")})}},init(){const t=this;t.on("change:title change:description change:link change:btn_text change:background_img",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                <div class="cta__bg" data-background="${this.get("background_img")}"></div>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10">
                            <div class="cta__content">
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                                <a href="${this.get("link")}" class="btn arrow-btn">${this.get("btn_text")} <img
                                        src="${a}/frontend/img/icons/right_arrow.svg" alt="${this.get("btn_text")}"
                                        class="injectable"></a>
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,e=!1){t.set({editable:!1,draggable:e,droppable:!1,copyable:e,selectable:e}),t.components().forEach(c=>this.applyRules(c))}}})};export{d as default};
