import{r as d}from"./registerComponent-4cde538b.js";const p=""+new URL("contact-form-a357d8da.webp",import.meta.url).href,g=(i,{folderName:o,fileName:c},a)=>{d({editor:i,name:c,category:o,media:`<img src="${p}"/>`,model:{defaults:{tagName:"section",attributes:{class:"contact-area section-py-120"},traits:[{name:"title",label:"Title",type:"text",changeProp:!0},{name:"description",label:"Description",type:"textarea",changeProp:!0},{name:"comment_placeholder",label:"Comment Input Placeholder Text",type:"text",changeProp:!0},{name:"subject_placeholder",label:"Subject Input Placeholder Text",type:"text",changeProp:!0},{name:"name_placeholder",label:"Name Input Placeholder Text",type:"text",changeProp:!0},{name:"email_placeholder",label:"Email Input Placeholder Text",type:"text",changeProp:!0},{name:"btn_text",label:"Button Text",type:"text",changeProp:!0},{type:"accordion",label:"Contact Information",name:"infos",changeProp:!0,inputsConfig:[{name:"title",type:"text",label:"Title",placeholder:"Title",default:"Lorem Ipsum"},{name:"icon",type:"image-upload",label:"Icon",default:`${a}/frontend/img/icons/map.svg`},{name:"items",type:"textarea",placeholder:"Items (Enter one item per line)",rows:10,default:`+1 (126) 471-4441
+1 (553) 149-8938`}]}],title:"Send Us Message",description:"Your email address will not be published. Required fields are marked *",comment_placeholder:"Comment",subject_placeholder:"Subject",name_placeholder:"Name",email_placeholder:"E-mail",btn_text:"Submit Now",infos:[{title:"Address",items:`3166 Chestnut Street Winter Haven,
 FL 33830`,icon:`${a}/frontend/img/icons/map.svg`},{title:"Phone",items:`+1 (126) 471-4441
+1 (553) 149-8938`,icon:`${a}/frontend/img/icons/contact_phone.svg`},{title:"E-mail Address",items:`veqev@mailinator.com
sosodyca@mailinator.com`,icon:`${a}/frontend/img/icons/emial.svg`}],script:function(){SVGInject(document.querySelectorAll("img.injectable"))}},init(){const e=this;e.on("change:title change:description change:comment_placeholder change:subject_placeholder change:name_placeholder change:email_placeholder change:btn_text change:infos",()=>{e.updateContent(),e.view.render()}),e.updateContent()},updateContent(){const l=`
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="contact-info-wrap">
                                <ul class="list-wrap">
                                    ${(this.get("infos")||[]).map(t=>`
                    <li>
                        <div class="icon">
                            <img src="${t.icon}" alt="${t.title}" class="injectable">
                        </div>
                        <div class="content">
                            <h4 class="title">${t.title}</h4>
                            ${t.items.split(`
`).map(n=>n.trim()).filter(Boolean).map((n,s,r)=>{const m=s===r.length-1;return`<p class="">${n}</p>`}).join("")}
                        </div>
                    </li>
                `).join("")}
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="contact-form-wrap">
                                <h4 class="title">${this.get("title")}</h4>
                                <p>${this.get("description")}</p>
                                <!-- DYNAMIC_PART_START:contact-form commentPlaceholderText="${this.get("comment_placeholder")}" subjectPlaceholderText="${this.get("subject_placeholder")}" namePlaceholderText="${this.get("name_placeholder")}" emailPlaceholderText="${this.get("email_placeholder")}" button_text="${this.get("btn_text")}" -->
                                    <form id="contact-form" action="">
                                        <div class="form-grp">
                                            <textarea name="message" placeholder="${this.get("comment_placeholder")} *" required></textarea>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-grp">
                                                    <input name="subject" type="text" placeholder="${this.get("subject_placeholder")} *" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-grp">
                                                    <input name="name" type="text" placeholder="${this.get("name_placeholder")} *" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-grp">
                                                    <input name="email" type="email" placeholder="${this.get("email_placeholder")} *" required>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" class="btn btn-two arrow-btn">${this.get("btn_text")}<img src="${a}/frontend/img/icons/right_arrow.svg" alt="img" class="injectable"></button>
                                    </form>
                                <!-- DYNAMIC_PART_END -->
                            </div>
                        </div>
                    </div>
                </div>
                `;this.components(l),this.applyRules(this,!0)},applyRules(e,l=!1){e.set({editable:!1,draggable:l,droppable:!1,copyable:l,selectable:l}),e.components().forEach(t=>this.applyRules(t))}}})};export{g as default};
