webpackJsonp([14],{"FO5+":function(e,t,r){"use strict";var a=r("woOf"),n=r.n(a),s=r("s/Rn"),o={bigPic:"",brandStory:"",factoryStatus:0,firstLetter:"",logo:"",name:"",showStatus:0,sort:0},l={name:"BrandDetail",components:{SingleUpload:r("TZVV").a},props:{isEdit:{type:Boolean,default:!1}},data:function(){return{brand:n()({},o),rules:{name:[{required:!0,message:"请输入品牌名称",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}],logo:[{required:!0,message:"请输入品牌logo",trigger:"blur"}],sort:[{type:"number",message:"排序必须为数字"}]}}},created:function(){var e=this;this.isEdit?Object(s.d)(this.$route.query.id).then(function(t){e.brand=t.data}):this.brand=n()({},o)},methods:{onSubmit:function(e){var t=this;this.$refs[e].validate(function(r){if(!r)return t.$message({message:"验证失败",type:"error",duration:1e3}),!1;t.$confirm("是否提交数据","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){t.isEdit?Object(s.e)(t.$route.query.id,t.brand).then(function(r){t.$refs[e].resetFields(),t.$message({message:"修改成功",type:"success",duration:1e3}),t.$router.back()}):Object(s.a)(t.brand).then(function(r){t.$refs[e].resetFields(),t.brand=n()({},o),t.$message({message:"提交成功",type:"success",duration:1e3})})})})},resetForm:function(e){this.$refs[e].resetFields(),this.brand=n()({},o)}}},i={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-card",{staticClass:"form-container",attrs:{shadow:"never"}},[r("el-form",{ref:"brandFrom",attrs:{model:e.brand,rules:e.rules,"label-width":"150px"}},[r("el-form-item",{attrs:{label:"品牌名称：",prop:"name"}},[r("el-input",{model:{value:e.brand.name,callback:function(t){e.$set(e.brand,"name",t)},expression:"brand.name"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"品牌首字母："}},[r("el-input",{model:{value:e.brand.firstLetter,callback:function(t){e.$set(e.brand,"firstLetter",t)},expression:"brand.firstLetter"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"品牌LOGO：",prop:"logo"}},[r("single-upload",{model:{value:e.brand.logo,callback:function(t){e.$set(e.brand,"logo",t)},expression:"brand.logo"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"品牌专区大图："}},[r("single-upload",{model:{value:e.brand.bigPic,callback:function(t){e.$set(e.brand,"bigPic",t)},expression:"brand.bigPic"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"品牌故事："}},[r("el-input",{attrs:{placeholder:"请输入内容",type:"textarea",autosize:!0},model:{value:e.brand.brandStory,callback:function(t){e.$set(e.brand,"brandStory",t)},expression:"brand.brandStory"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"排序：",prop:"sort"}},[r("el-input",{model:{value:e.brand.sort,callback:function(t){e.$set(e.brand,"sort",e._n(t))},expression:"brand.sort"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"是否显示："}},[r("el-radio-group",{model:{value:e.brand.showStatus,callback:function(t){e.$set(e.brand,"showStatus",t)},expression:"brand.showStatus"}},[r("el-radio",{attrs:{label:1}},[e._v("是")]),e._v(" "),r("el-radio",{attrs:{label:0}},[e._v("否")])],1)],1),e._v(" "),r("el-form-item",{attrs:{label:"品牌制造商："}},[r("el-radio-group",{model:{value:e.brand.factoryStatus,callback:function(t){e.$set(e.brand,"factoryStatus",t)},expression:"brand.factoryStatus"}},[r("el-radio",{attrs:{label:1}},[e._v("是")]),e._v(" "),r("el-radio",{attrs:{label:0}},[e._v("否")])],1)],1),e._v(" "),r("el-form-item",[r("el-button",{attrs:{type:"primary"},on:{click:function(t){e.onSubmit("brandFrom")}}},[e._v("提交")]),e._v(" "),e.isEdit?e._e():r("el-button",{on:{click:function(t){e.resetForm("brandFrom")}}},[e._v("重置")])],1)],1)],1)},staticRenderFns:[]};var d=r("VU/8")(l,i,!1,function(e){r("Rtvu")},null,null);t.a=d.exports},Rtvu:function(e,t){},f7GL:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a={name:"updateBrand",components:{BrandDetail:r("FO5+").a}},n={render:function(){var e=this.$createElement;return(this._self._c||e)("brand-detail",{attrs:{"is-edit":!0}})},staticRenderFns:[]};var s=r("VU/8")(a,n,!1,function(e){r("hroN")},null,null);t.default=s.exports},hroN:function(e,t){}});
//# sourceMappingURL=14.c3bcb54c6eb0dcdf8680.js.map