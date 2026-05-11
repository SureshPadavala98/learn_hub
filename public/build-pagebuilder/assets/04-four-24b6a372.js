import{r as i}from"./registerComponent-4cde538b.js";import{f as n}from"./h4_features_icon03-916c2058.js";const r=""+new URL("category-four-fedd4307.webp",import.meta.url).href,c=[{name:"Graphic Design",totalCourse:22},{name:"Finance",totalCourse:41},{name:"Development",totalCourse:29},{name:"App Development",totalCourse:19},{name:"Marketing",totalCourse:31},{name:"Life Style",totalCourse:23},{name:"Management",totalCourse:19},{name:"App Design",totalCourse:18}],m=c.map(t=>`
<div class="col-xl-3 col-lg-4 col-sm-6">
    <div class="categories__item-two">
        <a href="#">
            <div class="content">
                <img src="${n}" alt="${t.name}">
                <span
                    class="name"><strong>${t.name}</strong>${t.totalCourse} Courses</span>
            </div>
            <div class="icon">
                <i class="skillgro-next-2"></i>
            </div>
        </a>
    </div>
</div>
`).join(""),u=(t,{folderName:s,fileName:l})=>{i({editor:t,name:l,category:s,media:`<img src="${r}"/>`,model:{defaults:{tagName:"section",attributes:{class:"categories-area-two section-pt-140 section-pb-110"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0}],sub_title:"Trending Categories",title:"Top Category We Have"},init(){const e=this;e.on("change:sub_title change:title",()=>{e.updateContent()}),e.updateContent()},updateContent(){const e=`
                <div class="container home_language">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-md-8">
                            <div class="section__title mb-50 mb-xs-20">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title bold">${this.get("title")}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <!-- DYNAMIC_PART_START:category-four -->
                                ${m}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(o=>this.applyRules(o))}}})};export{u as default};
