import{r as i}from"./registerComponent-4cde538b.js";import{b as r,a as d,c as o,d as m,e as p,f as c,g}from"./brand07-f3938a52.js";import{s as b}from"./brand_star-515e842f.js";const u=""+new URL("brand-f4d72b7d.webp",import.meta.url).href,v=(s,{folderName:l,fileName:n})=>{i({editor:s,name:n,category:l,media:`<img src="${u}"/>`,model:{defaults:{tagName:"div",attributes:{class:"brand-area"},traits:[{type:"accordion",label:"Brands",name:"brands",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Brand"},{name:"logo",type:"image-upload",label:"Logo",default:r}]}],brands:[{title:"Brand 1",logo:r},{title:"Brand 2",logo:d},{title:"Brand 3",logo:o},{title:"Brand 4",logo:m},{title:"Brand 5",logo:p},{title:"Brand 6",logo:c},{title:"Brand 7",logo:g}],script:function(){const e=this,a=$(e).find(".marquee_mode");a.length&&!a.hasClass("marquee-initialized")&&(a.addClass("marquee-initialized"),a.marquee({speed:20,gap:35,delayBeforeStart:0,direction:"left",duplicated:!0,pauseOnHover:!0,startVisible:!0}))}},init(){const e=this;e.on("change:brands",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const a=`
                    <div class="container-fluid">
                        <div class="marquee_mode">
                            ${(this.get("brands")||[]).map(t=>`
                    <div class="brand__item">
                        <a href="#"><img src="${t.logo}" alt="${t.title}"></a>
                        <img src="${b}" alt="star">
                    </div>
                `).join("")}
                        </div>
                    </div>
                `;this.components(a),this.applyRules(this,!0)},applyRules(e,a=!1){e.set({editable:!1,draggable:a,droppable:!1,copyable:a,selectable:a}),e.components().forEach(t=>this.applyRules(t))}}})};export{v as default};
