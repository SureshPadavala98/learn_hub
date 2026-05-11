import{r as l}from"./registerComponent-4cde538b.js";import{f as i,a as o,b as c}from"./features_icon03-882265fa.js";const p=""+new URL("features_icon04-6e449b41.svg",import.meta.url).href,u=""+new URL("features-6d5c3609.webp",import.meta.url).href,g=(n,{folderName:r,fileName:s})=>{l({editor:n,name:s,category:r,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"features__area"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{type:"accordion",label:"Features",name:"features",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"description",type:"textarea",label:"Description",placeholder:"Description",default:"Curate anding area share Pluralsight content to reach your"},{name:"icon",type:"image-upload",label:"Icon",default:i}]}],sub_title:"How We Start Journey",title:"Start your Learning Journey Today!",description:"Groove’s intuitive shared inbox makesteam members together <br> organize, prioritize and.In this episode.",features:[{title:"Learn with Experts",description:"Curate anding area share Pluralsight content to reach your",icon:i},{title:"Learn Anything",description:"Curate anding area share Pluralsight content to reach your",icon:o},{title:"Get Online Certificate",description:"Curate anding area share Pluralsight content to reach your",icon:c},{title:"E-mail Marketing",description:"Curate anding area share Pluralsight content to reach your",icon:p}]},init(){const e=this;e.on("change:sub_title change:title change:description change:features",()=>e.updateContent()),e.updateContent()},updateContent(){const e=(this.get("features")||[]).map(t=>`
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="features__item">
                            <div class="features__icon">
                                <img src="${t.icon}" alt="${t.title}">
                            </div>
                            <div class="features__content">
                                <p class="title lh-base">${t.title}</p>
                                <p>${t.description}</p>
                            </div>
                        </div>
                    </div>
                `).join(""),a=`
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-6">
                                <div class="section__title white-title text-center mb-50">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                    <p>${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            ${e}
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{g as default};
