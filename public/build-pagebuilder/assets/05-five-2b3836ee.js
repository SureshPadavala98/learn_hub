import{r as c}from"./registerComponent-4cde538b.js";import{f as l}from"./h4_features_icon03-916c2058.js";const r=""+new URL("h4_features_icon01-41ba8370.svg",import.meta.url).href,d=""+new URL("h4_features_icon02-b028d33b.svg",import.meta.url).href,p=""+new URL("features_bg-b9189757.webp",import.meta.url).href,g=""+new URL("feature-five-1a5a7632.webp",import.meta.url).href,f=(o,{folderName:n,fileName:s},i)=>{c({editor:o,name:s,category:n,media:`<img src="${g}"/>`,model:{defaults:{tagName:"section",attributes:{class:"features__area-five features__bg section-pt-120 section-pb-90"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0},{type:"accordion",label:"Features",name:"features",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"description",type:"textarea",label:"Description",placeholder:"Description",default:"We are able to offer every yoga training experienced & best yoga trainer."},{name:"icon",type:"image-upload",label:"Icon",default:r}]}],title:"Connecting Your Mind, Body and Spirit through",description:"We believe yoga can power transformation on and off the mat We are more than just yogis - we're mom's, home makers, yoga studio owners, epic yoga retreat hosts",features:[{title:"Support & Motivation",description:"We are able to offer every yoga training experienced & best yoga trainer.",icon:r},{title:"Strong Body Life",description:"We are able to offer every yoga training experienced & best yoga trainer.",icon:d},{title:"Increased Flexibility",description:"We are able to offer every yoga training experienced & best yoga trainer.",icon:l}],background_img:p,script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),SVGInject(document.querySelectorAll("img.injectable")),e();function e(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const e=this;e.on("change:title change:description change:features change:background_img",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=(this.get("features")||[]).map(t=>`
                    <div class="col-lg-4 col-md-6">
                        <div class="features__item-four">
                            <div class="features__icon-four">
                                <img src="${t.icon}" alt="${t.title}"
                                    class="injectable">
                            </div>
                            <div class="features__content-four">
                                <h3 class="title">${t.title}</h3>
                                <p>${t.description}</p>
                            </div>
                        </div>
                    </div>
                `).join(""),a=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <div class="section__title text-center white-title mb-60">
                                <h2 class="title">${this.get("title")}</h2>
                                <p>${this.get("description")}</p>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-xl-10">
                            <div class="row justify-content-center">
                                ${e}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="features__shape-wrap">
                    <img src="${i}/frontend/img/others/h4_features_shape01.svg" alt="shape" data-aos="fade-right"
                        data-aos-delay="200">
                    <img src="${i}/frontend/img/others/h4_features_shape02.svg" alt="shape" data-aos="fade-left"
                        data-aos-delay="200">
                </div>
                `;this.components(a),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{f as default};
