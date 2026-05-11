import{r as p}from"./registerComponent-4cde538b.js";const d=""+new URL("fact_img-a64ce6a9.webp",import.meta.url).href,u=""+new URL("counter-four-17729b47.webp",import.meta.url).href,m=(n,{folderName:c,fileName:o},s)=>{p({editor:n,name:o,category:c,media:`<img src="${u}"/>`,model:{defaults:{tagName:"section",attributes:{class:"fact__area-two section-pb-140"},traits:[{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"image",label:"Image",type:"image-upload",changeProp:!0},{type:"accordion",label:"Counters",name:"counters",changeProp:!0,inputsConfig:[{name:"title",type:"text",placeholder:"Title",default:"New Counter"},{name:"count",type:"number",placeholder:"Count",default:99},{name:"icon",type:"text",placeholder:"Icon (%, +, k)",default:"%"}]}],title:'Thousands of <span class="highlight">courses</span> authored by industry experts',image:d,counters:[{title:"Active Students",count:3e3,icon:"+"},{title:"Best Professors",count:100,icon:"+"}],script:function(){var t=$(".tg-svg");t.each(function(){var a=$(this),e=a.find(".svg-icon"),i=e.attr("id"),l=e.data("svg-icon");if(i){var r=new Vivus(i,{duration:80,file:l});a.on("mouseenter",function(){r.reset().play()})}}),SVGInject(document.querySelectorAll("img.injectable"))}},init(){const t=this;t.on("change:title change:image change:counters",()=>t.updateContent()),t.updateContent()},updateContent(){const t=(this.get("counters")||[]).map(e=>`
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
                                <div class="fact__img-wrap tg-svg">
                                    <img src="${this.get("image")}" alt="counter image">
                                    <div class="shape-one">
                                        <img src="${s}/frontend/img/others/fact_shape01.svg" alt="img" class="injectable">
                                    </div>
                                    <div class="shape-two">
                                        <span class="svg-icon" id="fact-btn" data-svg-icon="${s}/frontend/img/others/fact_shape02.svg"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(t,a=!1){t.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),t.components().forEach(e=>this.applyRules(e))}}})};export{m as default};
