import{r as l}from"./registerComponent-4cde538b.js";import{f as i,a as o,b as c}from"./theme_university_features_icon_3-369abff9.js";import{f as p}from"./theme_university_features_icon_4-f9bd42d4.js";const u=""+new URL("feature-six-ccb73415.webp",import.meta.url).href,g=(s,{folderName:n,fileName:r})=>{l({editor:s,name:r,category:n,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"features__area-eight"},traits:[{type:"accordion",label:"Features",name:"features",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"description",type:"textarea",label:"Description",placeholder:"Description",default:"Elevate your learning."},{name:"icon",type:"image-upload",label:"Icon",default:i}]}],features:[{title:"Learn From Experts",description:"Elevate your learning.",icon:o},{title:"Learn Anything",description:"Master Any Skill.",icon:c},{title:"Graduation Courses",description:"Grow skills, shape future.",icon:p},{title:"Get Online Certificate",description:"Master in Demand Skills.",icon:i}],script:function(){SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;e.on("change:features",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const a=`
                <div class="container">
                    <div class="row">
                        ${(this.get("features")||[]).map(t=>`
                    <div class="col-xl-3 col-lg-4 col-md-6">
                        <div class="features__item-six features__item-seven">
                            <div class="features__icon-six features__icon-seven">
                                <img src="${t.icon}" alt="${t.title}">
                            </div>
                            <div class="features__content-six features__content-seven">
                                <h4 class="title">${t.title}</h4>
                                <span>${t.description}</span>
                            </div>
                        </div>
                    </div>
                `).join("")}
                    </div>
                </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{g as default};
