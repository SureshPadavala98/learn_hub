import{r as l}from"./registerComponent-4cde538b.js";const r=""+new URL("h5_about_img01-0959a52f.webp",import.meta.url).href,c=""+new URL("h5_about_img02-177f3251.webp",import.meta.url).href,g=""+new URL("about-nine-92bea2ba.webp",import.meta.url).href,u=(i,{folderName:s,fileName:o},e)=>{l({editor:i,name:o,category:s,media:`<img src="${g}"/>`,model:{defaults:{tagName:"section",attributes:{class:"about-area-five section-pb-140"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"contact_title",label:"Contact Title",type:"text",changeProp:!0},{name:"contact_number",label:"Contact Number",type:"text",changeProp:!0},{name:"about_img",label:"Image",type:"image-upload",changeProp:!0},{name:"about_img_two",label:"Image Two",type:"image-upload",changeProp:!0}],subtitle:"Get More About Us",title:"Our passion is childhood, and we’re in kindergarten",description:"<p>Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you're looking to advance your career</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",btnLink:`${e}/about-us`,btnText:"More Info",contact_title:"Call to Questions",contact_number:"+985 0059 500",about_img:r,about_img_two:c,script:function(){t();function t(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const t=this;t.on("change:subtitle change:title change:description change:btnLink change:btnText change:contact_title change:contact_number change:about_img change:about_img_two",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                <div class="container home_kindergarten">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-6 col-md-8">
                            <div class="about__images-five">
                                <div class="about__mask-img-one">
                                    <img src="${this.get("about_img")}"
                                        alt="${this.get("subtitle")}">
                                </div>
                                <div class="about__mask-img-two" data-aos="fade-right" data-aos-delay="200">
                                    <img src="${this.get("about_img_two")}"
                                        alt="${this.get("subtitle")}">
                                </div>
                                <div class="shape">
                                    <img src="${e}/frontend/img/others/h5_about_img_shape01.svg" alt="shape"
                                        data-aos="fade-down-left" data-aos-delay="400">
                                    <img src="${e}/frontend/img/others/h5_about_img_shape02.svg" alt="shape"
                                        data-aos="fade-up-right" data-aos-delay="400">
                                    <img src="${e}/frontend/img/others/h5_about_img_shape03.svg" alt="shape"
                                        class="rotateme">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about__content-five wsus_content-box">
                                <div class="section__title mb-15">
                                    <span class="sub-title">${this.get("subtitle")}</span>
                                    <h2 class="title bold">${this.get("title")}</h2>
                                </div>
                                <div>${this.get("description")}</div>
                                <div class="about__content-bottom">
                                        <a href="${this.get("btnLink")}"
                                            class="btn arrow-btn btn-four">${this.get("btnText")} <img
                                                src="${e}/frontend/img/icons/right_arrow.svg" class="injectable"></a>
                                        <div class="about__contact">
                                            <div class="icon">
                                                <i class="fas fa-phone-alt"></i>
                                                <svg width="61" height="57" viewBox="0 0 61 57" fill="none"
                                                    xmlns="http://www.w3.org/2000/svg">
                                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                                        d="M33.8271 1.03084C45.4231 1.45238 55.2747 9.02544 58.7825 19.8885C62.2129 30.5119 58.2066 41.852 49.1968 48.6277C39.3708 56.0171 26.0908 58.9731 15.8124 52.2032C4.34981 44.6532 -2.0548 30.6516 2.45508 17.8409C6.75857 5.61644 20.666 0.552417 33.8271 1.03084Z"
                                                        stroke="currentcolor" stroke-width="2" />
                                                </svg>
                                            </div>

                                            <div class="content">
                                                <a
                                                    href="tel:${this.get("btnText")}">${this.get("contact_number")}</a>
                                                <span>${this.get("contact_title")}</span>
                                            </div>
                                        </div>
                                </div>
                                <div class="shape">
                                    <img src="${e}/frontend/img/others/h5_about_shape02.png" alt="shape"
                                        class="alltuchtopdown">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about__shape">
                    <img src="${e}/frontend/img/others/h5_about_shape01.png" alt="shape" data-aos="fade-right"
                        data-aos-delay="800">
                </div>
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(n=>this.applyRules(n))}}})};export{u as default};
