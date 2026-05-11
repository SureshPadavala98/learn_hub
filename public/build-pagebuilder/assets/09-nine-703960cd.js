import{r as l}from"./registerComponent-4cde538b.js";import{f as r}from"./theme_university_features_icon_4-f9bd42d4.js";const c=""+new URL("h8_about_img01-848eee47.webp",import.meta.url).href,u=""+new URL("h8_about_img02-b8229d90.webp",import.meta.url).href,g=""+new URL("h8_about_bg-9c486e22.webp",import.meta.url).href,d=""+new URL("about-seven-f5175fd2.webp",import.meta.url).href,h=(i,{folderName:s,fileName:o},e)=>{l({editor:i,name:o,category:s,media:`<img src="${d}"/>`,model:{defaults:{tagName:"section",attributes:{class:"about-area-six about__bg"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"count",label:"Count",type:"text",changeProp:!0},{name:"count_title",label:"Count Title",type:"text",changeProp:!0},{name:"count_img",label:"Count Image",type:"image-upload",changeProp:!0},{name:"about_img",label:"Image",type:"image-upload",changeProp:!0},{name:"about_img_two",label:"Image Two",type:"image-upload",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0}],subtitle:"Get More About Us",title:'Thousand Of Top <span class="highlight">Courses</span><br> Now in One Place',description:"<p>Groove’s intuitive shared inbox makes it easy for team members to organize, prioritize and.In this episode of the Smashing Pod we’re talking about Web Platform Baseline.</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",btnLink:`${e}/about-us`,btnText:"Discover All Class",count:"86%",count_title:"Course Success",count_img:r,about_img:c,about_img_two:u,background_img:g,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),SVGInject(document.querySelectorAll("img.injectable")),t();function t(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const t=this;t.on("change:subtitle change:title change:description change:btnLink change:btnText change:count change:count_title change:count_img change:about_img change:about_img_two change:background_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-6 col-md-10">
                            <div class="about__images-six">
                                <img src="${this.get("about_img")}" alt="${this.get("subtitle")}">
                                <img src="${this.get("about_img_two")}" alt="${this.get("subtitle")}" data-aos="fade-left"
                                    data-aos-delay="400">
                                <div class="about__success" data-aos="fade-up" data-aos-delay="400">
                                    <div class="icon">
                                        <img src="${this.get("count_img")}" alt="${this.get("count_title")}">
                                    </div>
                                    <div class="content">
                                        <h2 class="title">${this.get("count")}</h2>
                                        <span>${this.get("count_title")}</span>
                                    </div>
                                </div>
                                <div class="shape">
                                    <img src="${e}/frontend/img/others/h8_about_img_shape.svg" alt="shape" class="alltuchtopdown">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="about__content-six">
                                <div class="section__title mb-15">
                                    <span class="sub-title">${this.get("subtitle")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                </div>
                                <div>${this.get("description")}</div>
                                <a href="${this.get("btnLink")}" class="btn arrow-btn btn-four">${this.get("btnText")} <img
                                        src="${e}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about__shape-wrap">
                    <img src="${e}/frontend/img/others/h8_about_shape01.svg" alt="shape" data-aos="fade-down-right"
                        data-aos-delay="400">
                    <img src="${e}/frontend/img/others/h8_about_shape02.svg" alt="shape" data-aos="fade-up-left"
                        data-aos-delay="400">
                </div>
                `;this.components(t),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(n=>this.applyRules(n))}}})};export{h as default};
