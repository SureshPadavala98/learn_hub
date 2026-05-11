import{r as c}from"./registerComponent-4cde538b.js";const l=""+new URL("counter-a2b34ae3.webp",import.meta.url).href,u=(n,{folderName:s,fileName:o},i)=>{c({editor:n,name:o,category:s,media:`<img src="${l}"/>`,model:{defaults:{tagName:"section",attributes:{class:"fact__area"},traits:[{type:"accordion",label:"Counters",name:"counters",changeProp:!0,inputsConfig:[{name:"title",type:"text",placeholder:"Title",default:"New Counter"},{name:"count",type:"number",placeholder:"Count",default:99},{name:"icon",type:"text",placeholder:"Icon (%, +, k)",default:"%"}]}],counters:[{title:"Active Students",count:45,icon:"k+"},{title:"Faculty Courses",count:89,icon:"+"},{title:"Best Professors",count:156,icon:"k"},{title:"Award Achieved",count:42,icon:"k"}]},init(){const e=this;e.on("change:counters",()=>e.updateContent()),e.updateContent()},updateContent(){const a=`
                    <div class="container">
                        <div class="fact__inner-wrap">
                            <div class="row">
                                ${(this.get("counters")||[]).map(t=>`
                    <div class="col-lg-3 col-sm-6">
                        <div class="fact__item">
                            <h2 class="count">
                                <span class="odometer" data-count="${t.count}">${t.count}</span>${t.icon}
                            </h2>
                            <p>${t.title}</p>
                        </div>
                    </div>
                `).join("")}
                            </div>
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{u as default};
