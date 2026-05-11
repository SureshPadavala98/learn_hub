import{r as l}from"./registerComponent-4cde538b.js";import{f as r}from"./h4_features_icon03-916c2058.js";const c=""+new URL("category-three-47fc7e97.webp",import.meta.url).href,p=[{name:"Graphic Design",totalCourse:22},{name:"Finance",totalCourse:41},{name:"Development",totalCourse:29},{name:"App Development",totalCourse:19},{name:"Marketing",totalCourse:31},{name:"Life Style",totalCourse:23},{name:"Management",totalCourse:19},{name:"App Design",totalCourse:18}],m=p.map(t=>`
<div class="col-lg-3 col-sm-6">
    <div class="categories__item-four shine__animate-item">
        <a href="#" class="shine__animate-link">
            <img src="${r}" alt="${t.name}">
            <span class="name">${t.name} <strong>(${t.totalCourse})</strong></span>
        </a>
    </div>
</div>
`).join(""),g=(t,{folderName:o,fileName:i},s)=>{l({editor:t,name:i,category:o,media:`<img src="${c}"/>`,model:{defaults:{tagName:"section",attributes:{class:"categories-area-four fix section-pt-140 section-pb-110"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0}],sub_title:"Our Top Categories",title:"Our Food categories",script:function(){e();function e(){AOS.init({duration:1e3,mirror:!0,once:!0,disable:"mobile"})}}},init(){const e=this;e.on("change:sub_title change:title",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-8">
                            <div class="section__title text-center mb-50">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title bold">${this.get("title")}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- DYNAMIC_PART_START:category-three -->
                                ${m}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                <div class="categories__shape-wrap-two">
                    <img src="${s}/frontend/img/others/cat_shape01.svg" alt="shape" data-aos="fade-down-right"
                        data-aos-delay="400">
                    <img src="${s}/frontend/img/others/cat_shape02.svg" alt="shape" data-aos="fade-up-left"
                        data-aos-delay="400">
                </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(n=>this.applyRules(n))}}})};export{g as default};
