import{r as l}from"./registerComponent-4cde538b.js";import{f as c}from"./faq_img-08bd39e8.js";const r=""+new URL("about-two-e5df001d.webp",import.meta.url).href,p=(i,{folderName:s,fileName:n},e)=>{l({editor:i,name:n,category:s,media:`<img src="${r}"/>`,model:{defaults:{tagName:"section",attributes:{class:"about-area-two tg-motion-effects section-pt-120 section-pb-120"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"circle_text",label:"Circle Text",type:"textarea",changeProp:!0},{name:"about_img",label:"About Image",type:"image-upload",changeProp:!0}],subtitle:"Get More About Us",title:'Thousand Of Top <span class="highlight">Courses</span> Now in One Place',description:"<p>Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you're looking to advance your career</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",btnLink:`${e}/about-us`,btnText:"Start Free Trial",circle_text:"* Education * System * can * Make * Change *",about_img:c,script:function(){$(".curved-circle").circleType({position:"absolute",dir:1,radius:280,forceHeight:!0,forceWidth:!0})}},init(){const t=this;t.on("change:subtitle change:title change:description change:btnLink change:btnText change:circle_text change:about_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-lg-6">
                                <div class="faq__img-wrap tg-svg">
                                    <div class="faq__round-text">
                                        <div class="curved-circle">
                                            ${this.get("circle_text")}
                                        </div>
                                    </div>
                                    <div class="faq__img faq__img-two">
                                        <img src="${this.get("about_img")}" alt="${this.get("title_one")}">
                                        <div class="shape-one">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="243" height="201" viewBox="0 0 243 201" fill="none" data-inject-url="${e}/frontend/img/others/faq_shape01.svg" class="injectable tg-motion-effects4">
                                                <path fill-rule="evenodd" clip-rule="evenodd" d="M33.4888 2.33732C51.0788 -4.90402 74.7375 10.3492 95.1583 10.1059C112.054 9.90458 124.917 -1.94773 142.286 1.04108C161.229 4.30087 182.771 11.4675 196.311 27.5126C209.823 43.525 204.073 64.7482 211.768 83.3776C219.978 103.254 244.371 120.756 242.796 140.051C241.244 159.064 219.234 165.093 204.324 174.576C191.463 182.756 177.07 187.574 161.728 191.613C144.966 196.024 128.585 200.247 110.135 199.366C85.6793 198.199 52.9607 207.808 36.8703 185.654C19.1764 161.292 51.8095 136.455 44.5608 109.082C38.4883 86.1502 3.04428 71.7681 0.682568 48.9991C-1.5703 27.2795 15.2076 9.8632 33.4888 2.33732Z" fill="currentcolor"></path>
                                            </svg>
                                        </div>
                                        <div class="shape-two">
                                            <span class="svg-icon" id="faq-two-svg" data-svg-icon="${e}/frontend/img/others/faq_shape02.svg"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="about__content">
                                    <div class="section__title">
                                        <span class="sub-title">${this.get("subtitle")}</span>
                                        <h2 class="title">
                                            ${this.get("title")}
                                        </h2>
                                    </div>
                                    ${this.get("description")}
                                    <div class="tg-button-wrap">
                                        <a href="${this.get("btnLink")}" class="btn arrow-btn">${this.get("btnText")} <img src="${e}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(o=>this.applyRules(o))}}})};export{p as default};
