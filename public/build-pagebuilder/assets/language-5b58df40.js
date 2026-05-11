import{r as u}from"./registerComponent-4cde538b.js";import{s as d}from"./student_grp-a5096f44.js";const h=""+new URL("h6_hero_bg-618c7ba5.webp",import.meta.url).href,p=""+new URL("h6_hero_img-7474fae4.webp",import.meta.url).href,m=""+new URL("course_icon03-0b5e079b.svg",import.meta.url).href,_=""+new URL("hero-six-0319ad34.webp",import.meta.url).href,v=(s,{folderName:o,fileName:l},t)=>{u({editor:s,name:l,category:o,media:`<img src="${_}"/>`,model:{defaults:{tagName:"section",attributes:{class:"banner-area banner-bg-six tg-motion-effects"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"videoLink",label:"Video Link",type:"text",changeProp:!0},{name:"videoBtnText",label:"Video Button Text",type:"text",changeProp:!0},{name:"feature_title",label:"Feature Title",type:"text",changeProp:!0},{name:"feature_icon",label:"Feature Image",type:"image-upload",changeProp:!0},{name:"feature_two",label:"Feature Two",type:"text",changeProp:!0},{name:"feature_two_title",label:"Feature Two Title",type:"text",changeProp:!0},{name:"feature_two_icon",label:"Feature Two Image",type:"image-upload",changeProp:!0},{name:"feature_three",label:"Feature Two",type:"text",changeProp:!0},{name:"feature_three_title",label:"Feature Two Title",type:"text",changeProp:!0},{name:"feature_three_icon",label:"Feature Two Image",type:"image-upload",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0},{name:"banner_img",label:"Banner Image",type:"image-upload",changeProp:!0}],title:"Confidently speak a new language",description:"<p>More than 240 thousand new users SignUp Here!</p><ul><li>Live classes online 24/7</li><li>Learn in small groups or 1-on-1</li><li>Free 7-day trial</li></ul>",btnLink:`${t}/courses`,btnText:"Find Your Course",videoLink:"https://www.youtube.com/watch?v=pMzGDBP6Bic",videoBtnText:"Watch Our Class Demo",feature_title:"80k Enrolled Students",feature_icon:d,feature_two:"4.9/5",feature_two_title:"Real Reviews",feature_two_icon:`${t}/frontend/img/icons/star.svg`,feature_three:"45+",feature_three_title:"Courses",feature_three_icon:m,banner_img:p,background_img:h,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")});var e=$(".tg-svg");e.each(function(){var n=$(this),i=n.find(".svg-icon"),r=i.attr("id"),c=i.data("svg-icon");if(r){var g=new Vivus(r,{duration:80,file:c});n.on("mouseenter",function(){g.reset().play()})}}),SVGInject(document.querySelectorAll("img.injectable")),a();function a(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const e=this;e.on("change:title change:description change:btnLink change:btnText change:videoLink change:videoBtnText change:feature_title change:feature_two change:feature_two_title change:feature_three change:feature_three_title change:banner_img change:background_img change:feature_icon change:feature_two_icon change:feature_three_icon",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                    <div class="home_language container">
                        <div class="row justify-content-center align-items-center">
                            <div class="col-lg-7 col-md-9 col-sm-10 order-0 order-lg-2">
                                <div class="banner__images-six">
                                    <div class="main-img tg-svg">
                                        <img src="${this.get("banner_img")}" alt="${this.get("title")}">
                                        <span class="svg-icon" id="banner-svg" data-svg-icon="${t}/frontend/img/banner/h6_banner_img_shape03.svg"></span>
                                    </div>
                                    <div class="about__enrolled about__enrolled-two" data-aos="fade-right" data-aos-delay="1000">
                                        <img src="${this.get("feature_icon")}" alt="${this.get("feature_title")}">
                                        <p class="title">${this.get("feature_title")}</p>
                                    </div>
                                    <div class="banner__review" data-aos="fade-left" data-aos-delay="1000">
                                        <div class="icon">
                                            <img src="${this.get("feature_two_icon")}" alt="${this.get("feature_two_title")}" class="injectable">
                                        </div>
                                        <h6 class="title">${this.get("feature_two")} <span> ${this.get("feature_two_title")}</span></h6>
                                    </div>
                                    <div class="banner__courses" data-aos="fade-up" data-aos-delay="1000">
                                        <div class="icon">
                                            <img src="${this.get("feature_three_icon")}" alt="${this.get("feature_three_title")}" class="injectable">
                                        </div>
                                        <h6 class="title">${this.get("feature_three")} <span>${this.get("feature_three_title")}</span></h6>
                                    </div>
                                    <div class="shape-wrap">
                                        <img src="${t}/frontend/img/banner/h6_banner_img_shape01.svg" alt="shape">
                                        <img src="${t}/frontend/img/banner/h6_banner_img_shape02.svg" alt="shape" class="alltuchtopdown">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="banner__content-six">
                                    <h2 class="title" data-aos="fade-up" data-aos-delay="200">${this.get("title")}</h2>

                                    <div class="sub-title wsus_content-box" data-aos="fade-up" data-aos-delay="400">
                                        ${this.get("description")}
                                    </div>
                                    <div class="banner__btn-wrap-three" data-aos="fade-up" data-aos-delay="800">
                                        <a href="${this.get("btnLink")}" class="btn arrow-btn btn-four">${this.get("btnText")} <img src="${t}/frontend/img/icons/right_arrow.svg" alt="img" class="injectable"></a>
                                        <a href="${this.get("videoLink")}" class="play-btn popup-video" aria-label="${this.get("videoBtnText")}"><i class="fas fa-play"></i> ${this.get("videoBtnText")}</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(n=>this.applyRules(n))}}})};export{v as default};
