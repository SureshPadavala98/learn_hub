import{r as c}from"./registerComponent-4cde538b.js";import{i as n}from"./online-instructor-4f977513.js";const o=""+new URL("instructor-four-a48a9f16.webp",import.meta.url).href,u=(i=4)=>{let a="";for(let e=0;e<i;e++)a+=`
            <div class="col-xl-3 col-lg-4 col-sm-6">
                <div class="instructor__item-five">
                    <div class="instructor__thumb-five">
                        <a href="#"><img src="${n}" alt="Mark Davenport"></a>
                        <div class="instructor__social-two">
                            <ul class="list-wrap">
                                <li><a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#" aria-label="Linkedin"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#" aria-label="Github"><i class="fab fa-github"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="instructor__content-five">
                        <h2 class="title"><a href="#">Mark Davenport</a>
                        </h2>
                        <span>Developer</span>
                    </div>
                </div>
            </div>
        `;return a},p=(i,{folderName:a,fileName:e},r)=>{c({editor:i,name:e,category:a,media:`<img src="${o}"/>`,model:{defaults:{tagName:"section",attributes:{class:"home_kindergarten instructor__area-six section-pb-110"},traits:[{name:"sub_title",label:"Sub Title",type:"text",changeProp:!0},{name:"title",label:"Title",type:"text",changeProp:!0}],sub_title:"Our Teacher",title:"Our Top Class & Expert Instructors in One Place",script:function(){$("[data-background]").each(function(){$(this).css("background-image","url("+$(this).attr("data-background")+")")})}},init(){const t=this;t.on("change:sub_title change:title",()=>t.updateContent()),t.updateContent()},updateContent(){const t=`
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-5 col-lg-7">
                            <div class="section__title text-center mb-50">
                                <span class="sub-title">${this.get("sub_title")}</span>
                                <h2 class="title">${this.get("title")}</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <!-- DYNAMIC_PART_START:instructor-four -->
                            ${u()}
                        <!-- DYNAMIC_PART_END -->
                    </div>
                </div>
                <div class="instructor__shape-two">
                    <img src="${r}/frontend/img/instructor/h5_instructor_img_shape01.svg" alt="shape"
                        class="rotateme">
                    <img src="${r}/frontend/img/instructor/h5_instructor_img_shape02.svg" alt="shape"
                        class="alltuchtopdown">
                </div>
                `;this.components(t),this.addAttributes({"data-background":this.get("background_img")||""}),this.applyRules(this,!0)},applyRules(t,s=!1){t.set({editable:!1,draggable:s,droppable:!1,copyable:s,selectable:s}),t.components().forEach(l=>this.applyRules(l))}}})};export{p as default};
