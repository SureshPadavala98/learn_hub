import{r as s}from"./registerComponent-4cde538b.js";const r=""+new URL("h4_video_bg-84e6e2e3.webp",import.meta.url).href,c=""+new URL("call-to-action-two-889fb65f.webp",import.meta.url).href,d=(i,{folderName:n,fileName:o},a)=>{s({editor:i,name:o,category:n,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"video__area home_3_cta"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"video_link",label:"Video Link",type:"text",changeProp:!0},{name:"link",label:"Link",type:"text",changeProp:!0},{name:"btn_text",label:"Title",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],title:"Finding Your Right Courses",description:"Unlock your potential by joining our vibrant learning community",link:`${a}/register`,video_link:"https://www.youtube.com/watch?v=b2Az7_lLh3g",btn_text:"Join class Now",background_img:r,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;e.on("change:title change:description change:video_link change:link change:btn_text change:background_img",()=>e.updateContent()),e.updateContent()},updateContent(){const e=`
                <div class="video__bg" data-background="${this.get("background_img")}"></div>
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-7 col-lg-6 order-0 order-lg-2">
                            <div class="video__play-btn">
                                <a href="${this.get("video_link")}" class="popup-video" aria-label="Join Us"><i
                                        class="fas fa-play"></i></a>
                            </div>
                        </div>
                        <div class="col-xl-5 col-lg-6">
                            <div class="video__content">
                                <h2 class="title">${this.get("title")}</h2>
                                        <p>${this.get("description")}</p>
                                <a href="${this.get("link")}" class="btn btn-three arrow-btn">${this.get("btn_text")} <img
                                        src="${a}/frontend/img/icons/right_arrow.svg" alt="" class="injectable"></a>
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(l=>this.applyRules(l))}}})};export{d as default};
