import{r as n}from"./registerComponent-4cde538b.js";import{i as o}from"./online-instructor-4f977513.js";const c=""+new URL("instructor-three-2914e575.webp",import.meta.url).href,l=(i=4)=>{let e="";for(let s=0;s<i;s++)e+=`
            <div class="col-lg-3 col-sm-6">
                <div class="instructor__item-four">
                    <div class="instructor__thumb-four">
                        <a href="£">
                            <img src="${o}" alt="img">
                        </a>
                    </div>
                    <div class="instructor__content-four">
                        <h2 class="title"><a href="£">Mark Davenport</a>
                        </h2>
                        <span>Developer</span>
                    </div>
                </div>
            </div>
        `;return e},h=(i,{folderName:e,fileName:s},u)=>{n({editor:i,name:s,category:e,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"yoga_theme instructor__area-five section-pt-140 section-pb-110"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0}],sub_title:"Our Instructors",title:"Our Top Class & Expert Instructors in One Place",description:"Combines the ideas of empowered learning and top-tier instruction for students. Emphasizes both instructor expertise",script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")})}},init(){const t=this;t.on("change:sub_title change:title change:description",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-8">
                            <div class="section__title text-center mb-45">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- DYNAMIC_PART_START:instructor-three -->
                            ${l()}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                `;this.components(t),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(r=>this.applyRules(r))}}})};export{h as default};
