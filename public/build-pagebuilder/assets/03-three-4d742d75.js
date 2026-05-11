import{r as c}from"./registerComponent-4cde538b.js";const r=""+new URL("counter-three-0ba96e08.webp",import.meta.url).href,l=""+new URL("fact_bg-09f0f000.webp",import.meta.url).href,p=(o,{folderName:s,fileName:i},n)=>{c({editor:o,name:i,category:s,media:`<img src="${r}"/>`,model:{defaults:{tagName:"section",attributes:{class:"fact__area-three fact__bg"},traits:[{name:"title",label:"Title",type:"textarea",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"btnLink",label:"Button Link",type:"text",changeProp:!0},{name:"btnText",label:"Button Text",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0},{type:"accordion",label:"Counters",name:"counters",changeProp:!0,inputsConfig:[{name:"title",type:"text",placeholder:"Title",default:"New Counter"},{name:"count",type:"number",placeholder:"Count",default:99},{name:"icon",type:"text",placeholder:"Icon (%, +, k)",default:"%"}]}],title:'Explore Majors & <span class="highlight">Programs</span>',description:"Choose from 16 undergraduate and graduate majors Board and the Mississippi Universities Board with goal of promoting collaboration.",counters:[{title:"Active Students",count:3e3,icon:"+"},{title:"Best Professors",count:100,icon:"+"},{title:"Faculty Courses",count:800,icon:"+"}],background_img:l,btnLink:`${n}/contact`,btnText:"Take a Tour",script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),$(".odometer").appear(function(t){var e=$(".odometer");e.each(function(){var a=$(this).attr("data-count");$(this).html(a)})})}},init(){const t=this;t.on("change:title change:description change:btnLink change:btnText change:counters change:background_img",()=>{t.updateContent(),t.view.render()}),t.updateContent()},updateContent(){const t=(this.get("counters")||[]).map(a=>`
                    <div class="col-md-4 col-sm-6">
                        <div class="fact__item fact__item-two">
                            <h2 class="count"><span class="odometer" data-count="${a.count}"></span>${a.icon}</h2>
                            <p>${a.title}</p>
                        </div>
                    </div>
                `).join(""),e=`
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="fact__content-wrap">
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                                <a href="${this.get("btnLink")}" class="btn arrow-btn">${this.get("btnText")} <img src="${n}/frontend/img/icons/right_arrow.svg" alt="${this.get("btnText")}" class="injectable"></a>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <div class="fact__item-wrap-two">
                                <div class="row justify-content-center">
                                    ${t}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="fact__shape-wrap">
                    <img src="${n}/frontend/img/others/h3_fact_shape01.svg" alt="shape" class="alltuchtopdown">
                    <img src="${n}/frontend/img/others/h3_fact_shape02.svg" alt="shape" class="rotateme">
                </div>
                `;this.components(e),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(t,e=!1){t.set({editable:!1,draggable:e,droppable:!1,copyable:e,selectable:e}),t.components().forEach(a=>this.applyRules(a))}}})};export{p as default};
