import{r as o}from"./registerComponent-4cde538b.js";const l=""+new URL("trending-category-76c8f8df.webp",import.meta.url).href,r=[{icon:"flaticon-graphic-design",name:"Graphic Design",totalCourse:22},{icon:"flaticon-investment",name:"Finance",totalCourse:41},{icon:"flaticon-coding",name:"Development",totalCourse:29},{icon:"flaticon-email",name:"Marketing",totalCourse:31},{icon:"flaticon-fashion",name:"Life Style",totalCourse:23},{icon:"flaticon-interaction",name:"Management",totalCourse:19},{icon:"flaticon-web-design",name:"App Design",totalCourse:18}],c=r.map(t=>`
<div class="swiper-slide">
    <div class="categories__item">
        <a href="#">
        <div class="icon">
            <i class="${t.icon}"></i>
        </div>
        <span class="name">${t.name}</span>
        <span class="courses">(${t.totalCourse})</span>
        </a>
    </div>
</div>
`).join(""),d=(t,{folderName:s,fileName:a})=>{o({editor:t,name:a,category:s,media:`<img src="${l}"/>`,model:{defaults:{tagName:"section",attributes:{class:"categories-area section-py-120"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0}],sub_title:"Trending Categories",title:"Top Category We Have",description:"when known printer took a galley of type scrambl edmake",script:function(){new Swiper(".categories-active",{slidesPerView:6,spaceBetween:44,loop:!0,breakpoints:{1500:{slidesPerView:6},1200:{slidesPerView:5},992:{slidesPerView:4,spaceBetween:30},768:{slidesPerView:3,spaceBetween:25},576:{slidesPerView:2},0:{slidesPerView:2,spaceBetween:20}},navigation:{nextEl:".categories-button-next",prevEl:".categories-button-prev"}})}},init(){const e=this;e.on("change:sub_title change:title change:description",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const e=`
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-xl-5 col-lg-7">
                                <div class="section__title text-center mb-40">
                                    <span class="sub-title">${this.get("sub_title")}</span>
                                    <h2 class="title">${this.get("title")}</h2>
                                    <p class="desc">${this.get("description")}</p>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_START:trending-category -->
                        <div class="row">
                            <div class="col-12">
                                <div class="categories__wrap">
                                    <div class="swiper categories-active">
                                        <div class="swiper-wrapper">
                                            ${c}
                                        </div>
                                    </div>
                                    <div class="categories__nav">
                                        <button class="categories-button-prev">
                                            <svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M15 7L1 7M1 7L7 1M1 7L7 13" stroke="#161439" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>
                                        </button>
                                        <button class="categories-button-next">
                                            <svg width="16" height="14" viewBox="0 0 16 14" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <path d="M1 7L15 7M15 7L9 1M15 7L9 13" stroke="#161439" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- DYNAMIC_PART_END -->
                    </div>
                `;this.components(e),this.applyRules(this,!0)},applyRules(e,i=!1){e.set({editable:!1,draggable:i,droppable:!1,copyable:i,selectable:i}),e.components().forEach(n=>this.applyRules(n))}}})};export{d as default};
