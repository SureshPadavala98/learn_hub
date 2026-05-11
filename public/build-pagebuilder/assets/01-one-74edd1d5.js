import{r as g}from"./registerComponent-4cde538b.js";const m=""+new URL("breadcrumb-50fd8084.webp",import.meta.url).href,u=""+new URL("breadcrumb-fb28e2d6.webp",import.meta.url).href,h=(l,{folderName:o,fileName:d},e)=>{g({editor:l,name:d,category:o,media:`<img src="${u}"/>`,model:{defaults:{tagName:"div",attributes:{class:"breadcrumb__area breadcrumb__bg"},traits:[{name:"page_title",label:"Page Title",type:"text",changeProp:!0},{name:"background_img",label:"Background Image",type:"image-upload",changeProp:!0},{name:"links",label:"Links",type:"accordion",changeProp:!0,inputsConfig:[{name:"title",label:"Title",type:"text",changeProp:!0,default:"Page Name"},{name:"url",label:"URL",type:"text",changeProp:!0,default:"#"}]}],page_title:"Blogs",background_img:m,links:[{title:"Home",url:"/"},{title:"Blogs",url:"#"}],script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")}),a();function a(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const a=this;a.on("change:page_title change:background_img change:links",()=>{a.updateContent(),a.view.render()}),a.updateContent()},updateContent(){const a=this.get("links")||[],t=a.map((s,c)=>{const i=c===a.length-1;let n=`<span property="itemListElement" typeof="ListItem"><a href="${s.url&&!i?s.url:"javascript:;"}">${s.title}</a></span>`;return i||(n+='<span class="breadcrumb-separator"><i class="fas fa-angle-right"></i></span>'),n}).join(""),r=`
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="breadcrumb__content">
                                <h3 class="title">${this.get("page_title")}</h3>
                                <nav class="breadcrumb">
                                    ${t}
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="breadcrumb__shape-wrap">
                    <img src="${e}/frontend/img/others/breadcrumb_shape01.svg" alt="img" class="alltuchtopdown">
                    <img src="${e}/frontend/img/others/breadcrumb_shape02.svg" alt="img" data-aos="fade-right"
                        data-aos-delay="300">
                    <img src="${e}/frontend/img/others/breadcrumb_shape03.svg" alt="img" data-aos="fade-up"
                        data-aos-delay="400">
                    <img src="${e}/frontend/img/others/breadcrumb_shape04.svg" alt="img" data-aos="fade-down-left"
                        data-aos-delay="400">
                    <img src="${e}/frontend/img/others/breadcrumb_shape05.svg" alt="img" data-aos="fade-left"
                        data-aos-delay="400">
                </div>
                `;this.components(r),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(a,t=!1){a.set({editable:!1,draggable:t,droppable:!1,copyable:t,selectable:t}),a.components().forEach(r=>this.applyRules(r))}}})};export{h as default};
