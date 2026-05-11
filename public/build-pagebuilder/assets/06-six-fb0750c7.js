import{r as c}from"./registerComponent-4cde538b.js";const r=""+new URL("h4_choose_img-64fc4ed4.webp",import.meta.url).href,l=""+new URL("h4_choose_img02-f1bc4e74.webp",import.meta.url).href,g=""+new URL("h4_choose_bg-8ca80e7d.webp",import.meta.url).href,u=""+new URL("about-six-6551009e.webp",import.meta.url).href,h=(n,{folderName:o,fileName:s},i)=>{c({editor:n,name:s,category:o,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"choose__area-two yoga_why_choose section-py-140 choose__bg"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"circle_text",label:"Circle Text",type:"text",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"about_img",label:"Image",type:"image-upload",changeProp:!0},{name:"about_img_two",label:"Image Two",type:"image-upload",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],subtitle:"Why Choose Us",title:"Trained Your Body Mind Through Our Yoga",description:"<p>When an unknown printer took a galley of type and scrambled it to make cimen has survived not only five centurieswnknown.when an unknown printer took a galley of type.</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",circle_text:"YoGa . Expert . Coach . Since 1996",btnLink:`${i}/about-us`,btnText:"More Info",about_img:r,about_img_two:l,background_img:g,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")});const e=document.querySelector(".circle");e.innerHTML=e.textContent.replace(/\S/g,"<span>$&</span>");const t=document.querySelectorAll(".circle span");for(let a=0;a<t.length;a++)t[a].style.transform="rotate("+a*13+"deg)";SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;e.on("change:subtitle change:title change:description change:circle_text change:btnLink change:btnText change:about_img change:about_img_two change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-6 col-md-10">
                            <div class="choose__img-two">
                                <img src="${this.get("about_img")}" alt="${this.get("subtitle")}">
                                <div class="circle__text-wrap">
                                    <div class="icon">
                                        <img src="${i}/frontend/img/icons/circle_icon.svg" alt="circle"
                                            class="injectable">
                                    </div>
                                    <div class="content">
                                        <h6 class="circle rotateme">${this.get("circle_text")}</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="choose__content-two">
                                <div class="section__title mb-20">
                                    <span class="sub-title">${this.get("subtitle")}</span>
                                    <h2 class="title-two">${this.get("title")}</h2>
                                </div>
                                <p>${this.get("description")}</p>
                                <div class="choose__content-inner">
                                    <div class="row align-items-center gutter-20">
                                        <div class="col-sm-5 order-0 order-sm-2">
                                            <div class="choose__content-inner-img">
                                                <img src="${this.get("about_img_two")}" alt="${this.get("subtitle")}">
                                            </div>
                                        </div>
                                        <a href="${this.get("btnLink")}"
                                            class="btn arrow-btn btn-four">${this.get("btnText")} <img
                                                src="${i}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}"
                                                class="injectable"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="shape">
                                <img src="${i}/frontend/img/others/h4_choose_shape.svg" alt="shape" class="rotateme">
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(a=>this.applyRules(a))}}})};export{h as default};
