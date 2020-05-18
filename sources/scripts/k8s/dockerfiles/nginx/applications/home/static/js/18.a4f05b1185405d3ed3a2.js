webpackJsonp([18],{"3GWA":function(e,t){},"71OS":function(e,t){},"8+9g":function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var s={name:"addHomeAdvertise",components:{HomeAdvertiseDetail:r("bjEj").a}},i={render:function(){var e=this.$createElement;return(this._self._c||e)("home-advertise-detail",{attrs:{isEdit:!1}})},staticRenderFns:[]};var l=r("VU/8")(s,i,!1,function(e){r("71OS")},null,null);t.default=l.exports},bjEj:function(e,t,r){"use strict";var s=r("woOf"),i=r.n(s),l=r("TZVV"),a=r("Mdfv"),o=[{label:"PC首页轮播",value:0},{label:"APP首页轮播",value:1}],n={name:null,type:1,pic:null,startTime:null,endTime:null,status:0,url:null,note:null,sort:0},m={name:"HomeAdvertiseDetail",components:{SingleUpload:l.a},props:{isEdit:{type:Boolean,default:!1}},data:function(){return{homeAdvertise:null,rules:{name:[{required:!0,message:"请输入广告名称",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}],url:[{required:!0,message:"请输入广告链接",trigger:"blur"}],startTime:[{required:!0,message:"请选择开始时间",trigger:"blur"}],endTime:[{required:!0,message:"请选择到期时间",trigger:"blur"}],pic:[{required:!0,message:"请选择广告图片",trigger:"blur"}]},typeOptions:i()({},o)}},created:function(){var e=this;this.isEdit?Object(a.d)(this.$route.query.id).then(function(t){e.homeAdvertise=t.data}):this.homeAdvertise=i()({},n)},methods:{onSubmit:function(e){var t=this;this.$refs[e].validate(function(r){if(!r)return t.$message({message:"验证失败",type:"error",duration:1e3}),!1;t.$confirm("是否提交数据","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){t.isEdit?Object(a.e)(t.$route.query.id,t.homeAdvertise).then(function(r){t.$refs[e].resetFields(),t.$message({message:"修改成功",type:"success",duration:1e3}),t.$router.back()}):Object(a.a)(t.homeAdvertise).then(function(r){t.$refs[e].resetFields(),t.homeAdvertise=i()({},n),t.$message({message:"提交成功",type:"success",duration:1e3})})})})},resetForm:function(e){this.$refs[e].resetFields(),this.homeAdvertise=i()({},n)}}},d={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("el-card",{staticClass:"form-container",attrs:{shadow:"never"}},[r("el-form",{ref:"homeAdvertiseFrom",attrs:{model:e.homeAdvertise,rules:e.rules,"label-width":"150px",size:"small"}},[r("el-form-item",{attrs:{label:"广告名称：",prop:"name"}},[r("el-input",{staticClass:"input-width",model:{value:e.homeAdvertise.name,callback:function(t){e.$set(e.homeAdvertise,"name",t)},expression:"homeAdvertise.name"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"广告位置："}},[r("el-select",{model:{value:e.homeAdvertise.type,callback:function(t){e.$set(e.homeAdvertise,"type",t)},expression:"homeAdvertise.type"}},e._l(e.typeOptions,function(e){return r("el-option",{key:e.value,attrs:{label:e.label,value:e.value}})}))],1),e._v(" "),r("el-form-item",{attrs:{label:"开始时间：",prop:"startTime"}},[r("el-date-picker",{attrs:{type:"datetime",placeholder:"选择日期"},model:{value:e.homeAdvertise.startTime,callback:function(t){e.$set(e.homeAdvertise,"startTime",t)},expression:"homeAdvertise.startTime"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"到期时间：",prop:"endTime"}},[r("el-date-picker",{attrs:{type:"datetime",placeholder:"选择日期"},model:{value:e.homeAdvertise.endTime,callback:function(t){e.$set(e.homeAdvertise,"endTime",t)},expression:"homeAdvertise.endTime"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"上线/下线："}},[r("el-radio-group",{model:{value:e.homeAdvertise.status,callback:function(t){e.$set(e.homeAdvertise,"status",t)},expression:"homeAdvertise.status"}},[r("el-radio",{attrs:{label:0}},[e._v("下线")]),e._v(" "),r("el-radio",{attrs:{label:1}},[e._v("上线")])],1)],1),e._v(" "),r("el-form-item",{attrs:{label:"广告图片："}},[r("single-upload",{model:{value:e.homeAdvertise.pic,callback:function(t){e.$set(e.homeAdvertise,"pic",t)},expression:"homeAdvertise.pic"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"排序："}},[r("el-input",{staticClass:"input-width",model:{value:e.homeAdvertise.sort,callback:function(t){e.$set(e.homeAdvertise,"sort",t)},expression:"homeAdvertise.sort"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"广告链接：",prop:"url"}},[r("el-input",{staticClass:"input-width",model:{value:e.homeAdvertise.url,callback:function(t){e.$set(e.homeAdvertise,"url",t)},expression:"homeAdvertise.url"}})],1),e._v(" "),r("el-form-item",{attrs:{label:"广告备注："}},[r("el-input",{staticClass:"input-width",attrs:{type:"textarea",rows:5,placeholder:"请输入内容"},model:{value:e.homeAdvertise.note,callback:function(t){e.$set(e.homeAdvertise,"note",t)},expression:"homeAdvertise.note"}})],1),e._v(" "),r("el-form-item",[r("el-button",{attrs:{type:"primary"},on:{click:function(t){e.onSubmit("homeAdvertiseFrom")}}},[e._v("提交")]),e._v(" "),e.isEdit?e._e():r("el-button",{on:{click:function(t){e.resetForm("homeAdvertiseFrom")}}},[e._v("重置")])],1)],1)],1)},staticRenderFns:[]};var u=r("VU/8")(m,d,!1,function(e){r("3GWA")},"data-v-01741cbc",null);t.a=u.exports}});
//# sourceMappingURL=18.a4f05b1185405d3ed3a2.js.map