import{r as o}from"./registerComponent-4cde538b.js";const l=""+new URL("counter-two-7227a1e7.webp",import.meta.url).href,p=(s,{folderName:n,fileName:i},c)=>{o({editor:s,name:i,category:n,media:`<img src="${l}"/>`,model:{defaults:{tagName:"section",attributes:{class:"fact__area-two"},traits:[{name:"title",label:"Title",type:"textarea",changeProp:!0},{type:"accordion",label:"Counters",name:"counters",changeProp:!0,inputsConfig:[{name:"title",type:"text",placeholder:"Title",default:"New Counter"},{name:"count",type:"number",placeholder:"Count",default:99},{name:"icon",type:"text",placeholder:"Icon (%, +, k)",default:"%"}]}],title:'Thousands of <span class="highlight">courses</span> authored by industry experts',counters:[{title:"Faculty Courses",count:800,icon:"+"},{title:"Best Professors",count:100,icon:"+"},{title:"Active Students",count:3e3,icon:"+"}]},init(){const t=this;t.on("change:title change:counters",()=>t.updateContent()),t.updateContent()},updateContent(){const t=(this.get("counters")||[]).map(e=>`
                    <div class="fact__item">
                        <h2 class="count">${e.count}<span class="odometer" data-count="${e.count}"></span>${e.icon}</h2>
                        <p>${e.title}</p>
                    </div>
                `).join(""),a=`
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="fact__inner-wrap-two">
                                    <div class="section__title white-title mb-30">
                                        <h2 class="title">${this.get("title")}</h2>
                                    </div>
                                    <div class="fact__item-wrap">
                                        ${t}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(e=>this.applyRules(e))}}})};export{p as default};
