import{r as l}from"./registerComponent-4cde538b.js";const r=""+new URL("h6_choose_img-1ea5c218.webp",import.meta.url).href,c=""+new URL("about-eight-cf22be03.webp",import.meta.url).href,h=(i,{folderName:s,fileName:n},a)=>{l({editor:i,name:n,category:s,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"choose__area-three section-pb-140"},traits:[{name:"subtitle",label:"Subtitle",type:"text",changeProp:!0},{name:"title",label:"Title",type:"test",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"videoLink",label:"Video Link",type:"text",changeProp:!0},{name:"about_img",label:"Image",type:"image-upload",changeProp:!0}],subtitle:"Why Choose Us",title:"Professional Courses taught by industry leaders",description:"<p>Discover a vast collection of top-rated courses, covering a wide range of subjects and taught by expert instructors. Whether you're looking to advance your career</p><ul><li>The Most World Class Instructors</li><li>Access Your Class anywhere</li><li>Flexible Course Price</li></ul>",videoLink:"https://www.youtube.com/watch?v=pMzGDBP6Bic",btnLink:`${a}/about-us`,btnText:"More Info",about_img:r},init(){const e=this;e.on("change:subtitle change:title change:description change:btnLink change:btnText change:videoLink change:about_img",()=>e.updateContent()),e.updateContent()},updateContent(){const e=`
                <div class="container">
                    <div class="row align-items-center justify-content-center">
                        <div class="col-lg-6 col-md-10">
                            <div class="choose__img-three">
                                <img src="${this.get("about_img")}" alt="${this.get("subtitle")}">
                                    <a href="${this.get("videoLink")}" class="play-btn popup-video" aria-label="Watch introductory video"><i
                                            class="fas fa-play"></i></a>

                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="choose__content-three">
                                <div class="section__title mb-15">
                                    <span class="sub-title">${this.get("subtitle")}</span>
                                    <h2 class="title bold">${this.get("title")}</h2>
                                </div>
                                <div class=" wsus_content-box">
                                    ${this.get("description")}
                                </div>
                                <a href="${this.get("btnLink")}" class="btn arrow-btn btn-four">${this.get("btnText")} <img src="${a}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>

                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,t=!1){e.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),e.components().forEach(o=>this.applyRules(o))}}})};export{h as default};
