import{r as n}from"./registerComponent-4cde538b.js";import{f as i,a as l,b as c}from"./theme_university_features_icon_3-369abff9.js";import{f as p}from"./theme_university_features_icon_4-f9bd42d4.js";const u=""+new URL("feature-three-ca0a5bfb.webp",import.meta.url).href,h=(r,{folderName:s,fileName:o})=>{n({editor:r,name:o,category:s,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"features__area-four section-pb-90"},traits:[{type:"accordion",label:"Features",name:"features",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"description",type:"textarea",label:"Description",placeholder:"Description",default:"Eestuidar University we prepare you to launch your."},{name:"icon",type:"image-upload",label:"Icon",default:i}]}],features:[{title:"Scholarship Facility",description:"Eestuidar University we prepare you to launch your.",icon:i},{title:"Learn From Experts",description:"Eestuidar University we prepare you to launch your.",icon:l},{title:"Graduation Courses",description:"Eestuidar University we prepare you to launch your.",icon:c},{title:"Certificate Program",description:"Eestuidar University we prepare you to launch your.",icon:p}],script:function(){SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;e.on("change:features",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const a=`
                    <div class="container">
                        <div class="features__item-wrap-two">
                            <div class="row justify-content-center">
                                ${(this.get("features")||[]).map(t=>`
                    <div class="col-lg-3 col-sm-6">
                        <div class="features__item-three orange">
                            <div class="features__icon-three">
                                <img src="${t.icon}" class="injectable" alt="${t.title}">
                            </div>
                            <div class="features__content-three">
                                <h2 class="title">${t.title}</h2>
                                <p>${t.description}</p>
                            </div>
                        </div>
                    </div>
                `).join("")}
                            </div>
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{h as default};
