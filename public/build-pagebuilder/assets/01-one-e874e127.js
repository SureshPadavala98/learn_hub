import{r as l}from"./registerComponent-4cde538b.js";import{a as r,b as c}from"./about_shape-fa40f4f9.js";import{s as u}from"./student_grp-a5096f44.js";const g=""+new URL("about-740fb796.webp",import.meta.url).href,m=(i,{folderName:n,fileName:s},a)=>{l({editor:i,name:s,category:n,media:`<img src="${g}"/>`,model:{defaults:{tagName:"section",attributes:{class:"about-area tg-motion-effects section-py-120"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"count",label:"Count",type:"text",changeProp:!0},{name:"count_title",label:"Count Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"ytLink",label:"YouTube Video Link",type:"text",changeProp:!0},{name:"about_img",label:"About Image",type:"image-upload",changeProp:!0},{name:"about_shape_img",label:"About Shape",type:"image-upload",changeProp:!0},{name:"count_img",label:"Count Image",type:"image-upload",changeProp:!0}],subtitle:"Get More About Us",title:'Thousand Of Top <span class="highlight">Courses</span> Now in One Place',count:"36K+",count_title:"Enrolled Students",description:"<p>Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you're looking to advance your career</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",btnLink:`${a}/about-us`,btnText:"Start Free Trial",ytLink:"https://www.youtube.com/watch?v=b2Az7_lLh3g",about_img:r,about_shape_img:c,count_img:u,script:function(){t();function t(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const t=this;t.on("change:subtitle change:title change:count change:count_title change:description change:btnLink change:btnText change:ytLink change:about_img change:about_shape_img change:count_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                    <div class="container">
                        <div class="row align-items-center justify-content-center">
                            <div class="col-lg-6 col-md-9">
                                <div class="about__images">
                                    <img src="${this.get("about_img")}" alt="${this.get("title_one")}" class="main-img">
                                    <img src="${this.get("about_shape_img")}" alt="${this.get("title_one")}" class="shape alltuchtopdown">
                                    <a href="${this.get("ytLink")}" class="popup-video">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="28" viewBox="0 0 22 28" fill="none">
                                            <path d="M0.19043 26.3132V1.69421C0.190288 1.40603 0.245303 1.12259 0.350273 0.870694C0.455242 0.6188 0.606687 0.406797 0.79027 0.254768C0.973854 0.10274 1.1835 0.0157243 1.39936 0.00193865C1.61521 -0.011847 1.83014 0.0480663 2.02378 0.176003L20.4856 12.3292C20.6973 12.4694 20.8754 12.6856 20.9999 12.9535C21.1245 13.2214 21.1904 13.5304 21.1904 13.8456C21.1904 14.1608 21.1245 14.4697 20.9999 14.7376C20.8754 15.0055 20.6973 15.2217 20.4856 15.3619L2.02378 27.824C1.83056 27.9517 1.61615 28.0116 1.40076 27.9981C1.18536 27.9847 0.97607 27.8983 0.792638 27.7472C0.609205 27.596 0.457661 27.385 0.352299 27.1342C0.246938 26.8833 0.191236 26.6008 0.19043 26.3132Z" fill="currentcolor" />
                                        </svg>
                                    </a>
                                    <div class="about__enrolled"  data-aos="fade-right" data-aos-delay="200">
                                        <p class="title"><span>${this.get("count")}</span> ${this.get("count_title")}</p>
                                        <img src="${this.get("count_img")}" alt="${this.get("count_title")}">
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
                                        <a href="${this.get("btnLink")}" class="btn arrow-btn">${this.get("btnText")} <img data-not-editable="true" src="${a}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                                    </div>  
                                </div>
                            </div>
                        </div>
                    </div>
                    
                `;this.components(t),this.applyRules(this,!0)},applyRules(t,e=!1){t.set({editable:!1,draggable:e,droppable:!1,copyable:e,selectable:e}),t.components().forEach(o=>this.applyRules(o))}}})};export{m as default};
