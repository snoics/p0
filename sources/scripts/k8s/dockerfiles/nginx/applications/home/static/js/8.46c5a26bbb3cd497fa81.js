webpackJsonp([8],{"97t3":function(e,t){},EgeR:function(e,t){},"HK+o":function(e,t,n){"use strict";var i=n("woOf"),r=n.n(i),s=n("bUp0"),a={title:"",parentId:0,name:"",icon:"",hidden:0,sort:0},u={name:"MenuDetail",props:{isEdit:{type:Boolean,default:!1}},data:function(){return{menu:r()({},a),selectMenuList:[],rules:{title:[{required:!0,message:"请输入菜单名称",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}],name:[{required:!0,message:"请输入前端名称",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}],icon:[{required:!0,message:"请输入前端图标",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}]}}},created:function(){var e=this;this.isEdit?Object(s.e)(this.$route.query.id).then(function(t){e.menu=t.data}):this.menu=r()({},a),this.getSelectMenuList()},methods:{getSelectMenuList:function(){var e=this;Object(s.c)(0,{pageSize:100,pageNum:1}).then(function(t){e.selectMenuList=t.data.list,e.selectMenuList.unshift({id:0,title:"无上级菜单"})})},onSubmit:function(e){var t=this;this.$refs[e].validate(function(n){if(!n)return t.$message({message:"验证失败",type:"error",duration:1e3}),!1;t.$confirm("是否提交数据","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){t.isEdit?Object(s.g)(t.$route.query.id,t.menu).then(function(e){t.$message({message:"修改成功",type:"success",duration:1e3}),t.$router.back()}):Object(s.a)(t.menu).then(function(n){t.$refs[e].resetFields(),t.resetForm(e),t.$message({message:"提交成功",type:"success",duration:1e3}),t.$router.back()})})})},resetForm:function(e){this.$refs[e].resetFields(),this.menu=r()({},a),this.getSelectMenuList()}}},l={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("el-card",{staticClass:"form-container",attrs:{shadow:"never"}},[n("el-form",{ref:"menuFrom",attrs:{model:e.menu,rules:e.rules,"label-width":"150px"}},[n("el-form-item",{attrs:{label:"菜单名称：",prop:"title"}},[n("el-input",{model:{value:e.menu.title,callback:function(t){e.$set(e.menu,"title",t)},expression:"menu.title"}})],1),e._v(" "),n("el-form-item",{attrs:{label:"上级菜单："}},[n("el-select",{attrs:{placeholder:"请选择菜单"},model:{value:e.menu.parentId,callback:function(t){e.$set(e.menu,"parentId",t)},expression:"menu.parentId"}},e._l(e.selectMenuList,function(e){return n("el-option",{key:e.id,attrs:{label:e.title,value:e.id}})}))],1),e._v(" "),n("el-form-item",{attrs:{label:"前端名称：",prop:"name"}},[n("el-input",{model:{value:e.menu.name,callback:function(t){e.$set(e.menu,"name",t)},expression:"menu.name"}})],1),e._v(" "),n("el-form-item",{attrs:{label:"前端图标：",prop:"icon"}},[n("el-input",{staticStyle:{width:"80%"},model:{value:e.menu.icon,callback:function(t){e.$set(e.menu,"icon",t)},expression:"menu.icon"}}),e._v(" "),n("svg-icon",{staticStyle:{"margin-left":"8px"},attrs:{"icon-class":e.menu.icon}})],1),e._v(" "),n("el-form-item",{attrs:{label:"是否显示："}},[n("el-radio-group",{model:{value:e.menu.hidden,callback:function(t){e.$set(e.menu,"hidden",t)},expression:"menu.hidden"}},[n("el-radio",{attrs:{label:0}},[e._v("是")]),e._v(" "),n("el-radio",{attrs:{label:1}},[e._v("否")])],1)],1),e._v(" "),n("el-form-item",{attrs:{label:"排序："}},[n("el-input",{model:{value:e.menu.sort,callback:function(t){e.$set(e.menu,"sort",t)},expression:"menu.sort"}})],1),e._v(" "),n("el-form-item",[n("el-button",{attrs:{type:"primary"},on:{click:function(t){e.onSubmit("menuFrom")}}},[e._v("提交")]),e._v(" "),e.isEdit?e._e():n("el-button",{on:{click:function(t){e.resetForm("menuFrom")}}},[e._v("重置")])],1)],1)],1)},staticRenderFns:[]};var o=n("VU/8")(u,l,!1,function(e){n("97t3")},"data-v-6066a354",null);t.a=o.exports},vbR0:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i={name:"addMenu",components:{MenuDetail:n("HK+o").a}},r={render:function(){var e=this.$createElement;return(this._self._c||e)("menu-detail",{attrs:{"is-edit":!1}})},staticRenderFns:[]};var s=n("VU/8")(i,r,!1,function(e){n("EgeR")},null,null);t.default=s.exports}});
//# sourceMappingURL=8.46c5a26bbb3cd497fa81.js.map