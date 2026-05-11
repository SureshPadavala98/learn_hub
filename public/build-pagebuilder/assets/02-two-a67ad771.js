import{r as l}from"./registerComponent-4cde538b.js";import{b as i,a as d,c as o,d as p,e as b,f as c,g}from"./brand07-f3938a52.js";const m=""+new URL("brand-three-bbaa242b.webp",import.meta.url).href,f=(s,{folderName:r,fileName:n})=>{l({editor:s,name:n,category:r,media:`<img src="${m}"/>`,model:{defaults:{tagName:"div",attributes:{class:"brand-area-three section-pb-120"},traits:[{type:"accordion",label:"Brands",name:"brands",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Brand"},{name:"logo",type:"image-upload",label:"Logo",default:i},{name:"link",type:"text",label:"Link",default:"#"}]}],brands:[{title:"Brand 1",logo:i,link:"#"},{title:"Brand 2",logo:d,link:"#"},{title:"Brand 3",logo:o,link:"#"},{title:"Brand 4",logo:p,link:"#"},{title:"Brand 5",logo:b,link:"#"},{title:"Brand 6",logo:c,link:"#"},{title:"Brand 7",logo:g,link:"#"}],script:function(){new Swiper(".brand-swiper-active",{slidesPerView:6,spaceBetween:30,observer:!0,observeParents:!0,loop:!0,breakpoints:{1500:{slidesPerView:6},1200:{slidesPerView:6},992:{slidesPerView:5,spaceBetween:24},768:{slidesPerView:4,spaceBetween:24},576:{slidesPerView:3},0:{slidesPerView:2}}})}},init(){const e=this;e.on("change:brands",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const a=`
                <div class="container">
                    <div class="swiper-container brand-swiper-active">
                        <div class="swiper-wrapper">
                            ${(this.get("brands")||[]).map(t=>`
                    <div class="swiper-slide">
                        <div class="brand__item-two">
                            <a href="${t.link}"><img src="${t.logo}" alt="${t.title}"></a>
                        </div>
                    </div>
                `).join("")}
                        </div>
                    </div>
                </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{f as default};
