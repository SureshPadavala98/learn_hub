import{r}from"./registerComponent-4cde538b.js";import{f as i,a as c,b as p}from"./features_icon03-882265fa.js";const d=""+new URL("feature-two-a84c7ffd.webp",import.meta.url).href,f=(s,{folderName:n,fileName:l},o)=>{r({editor:s,name:l,category:n,media:`<img src="${d}"/>`,model:{defaults:{tagName:"section",attributes:{class:"features__area-two section-pt-120 section-pb-90"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{type:"accordion",label:"Features",name:"features",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"description",type:"textarea",label:"Description",placeholder:"Description",default:"when an unknown printer took a galley offer type and scrambled makes."},{name:"icon",type:"image-upload",label:"Icon",default:i}]}],sub_title:"Our Top Features",title:"Achieve Your Goal With SkillGrow",description:"when an unknown printer took a galley of type and scrambled make <br> specimen book has survived not only five centuries",features:[{title:"Learn with Experts",description:"when an unknown printer took a galley offer type and scrambled makes.",icon:i},{title:"Effective Courses",description:"when an unknown printer took a galley offer type and scrambled makes.",icon:c},{title:"Earn Certificate",description:"when an unknown printer took a galley offer type and scrambled makes.",icon:p}]},init(){const e=this;e.on("change:sub_title change:title change:description change:features",()=>e.updateContent()),e.updateContent()},updateContent(){const e=(this.get("features")||[]).map(t=>`
                    <div class="col-lg-4 col-md-6">
                            <div class="features__item-two">
                                <div class="features__content-two">
                                    <div class="content-top">
                                        <div class="features__icon-two">
                                            <img src="${t.icon}" alt="${t.title}" class="injectable">
                                        </div>
                                        <h2 class="title">${t.title}</h2>
                                    </div>
                                    <p>${t.description}</p>
                                </div>
                                <div class="features__item-shape">
                                    <img src="${o}/frontend/img/others/features_item_shape.svg" alt="img" class="injectable">
                                </div>
                            </div>
                        </div>
                `).join(""),a=`
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-6 col-lg-8">
                                <div class="section__title text-center mb-40">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                    <p>${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <div class="features__item-wrap">
                            <div class="row justify-content-center">
                        ${e}
                            </div>
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{f as default};
