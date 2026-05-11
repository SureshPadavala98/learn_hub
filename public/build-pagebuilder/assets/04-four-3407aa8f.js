import{r as l}from"./registerComponent-4cde538b.js";import{b as c}from"./become_student-3fb760e9.js";const o=""+new URL("h4_cta_bg-26545d35.webp",import.meta.url).href,g=""+new URL("join-us-three-c6e193cf.webp",import.meta.url).href,h=(i,{folderName:n,fileName:s},e)=>{l({editor:i,name:s,category:n,media:`<img src="${g}"/>`,model:{defaults:{tagName:"section",attributes:{class:"cta__area-two cta__bg-two"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"link",label:"Title",type:"text",changeProp:!0},{name:"btn_text",label:"Title",type:"text",changeProp:!0},{name:"banner_img",label:"Banner Image",type:"image-upload",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],title:"My course helps to become Balance in life",link:`${e}/register`,btn_text:"Get Check Available Seat",banner_img:c,background_img:o,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),t();function t(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const t=this;t.on("change:title change:link change:btn_text change:banner_img change:background_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="cta__img">
                                <img src="${this.get("banner_img")}" alt="${this.get("title")}">
                                <div class="shape">
                                    <img src="${e}/frontend/img/others/h4_cta_shape.svg" alt="shape" class="rotateme">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="cta__content-two">
                                <h2 class="title">${this.get("title")}</h2>
                                <div class="cta__btn">
                                    <a href="${this.get("link")}" class="btn">${this.get("btn_text")}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="cta__shape">
                    <img src="${e}/frontend/img/others/h4_cta_shape02.svg" alt="shape" data-aos="fade-left" data-aos-delay="400">
                </div>
                `;this.components(t),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(r=>this.applyRules(r))}}})};export{h as default};
