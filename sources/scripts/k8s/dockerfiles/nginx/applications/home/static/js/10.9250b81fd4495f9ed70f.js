webpackJsonp([10],{"Gpb+":function(t,e,r){"use strict";var a=r("woOf"),i=r.n(a),o=r("mRsl"),u=r("KhLR"),s=r("3idm"),l={description:"",icon:"",keywords:"",name:"",navStatus:0,parentId:0,productUnit:"",showStatus:0,sort:0,productAttributeIdList:[]},n={name:"ProductCateDetail",components:{SingleUpload:r("TZVV").a},props:{isEdit:{type:Boolean,default:!1}},data:function(){return{productCate:i()({},l),selectProductCateList:[],rules:{name:[{required:!0,message:"请输入品牌名称",trigger:"blur"},{min:2,max:140,message:"长度在 2 到 140 个字符",trigger:"blur"}]},filterAttrs:[],filterProductAttrList:[{value:[]}]}},created:function(){var t=this;this.isEdit?(Object(o.e)(this.$route.query.id).then(function(e){t.productCate=e.data}),Object(s.e)(this.$route.query.id).then(function(e){if(null!=e.data&&e.data.length>0){t.filterProductAttrList=[];for(var r=0;r<e.data.length;r++)t.filterProductAttrList.push({key:Date.now()+r,value:[e.data[r].attributeCategoryId,e.data[r].attributeId]})}})):this.productCate=i()({},l),this.getSelectProductCateList(),this.getProductAttrCateList()},methods:{getSelectProductCateList:function(){var t=this;Object(o.c)(0,{pageSize:100,pageNum:1}).then(function(e){t.selectProductCateList=e.data.list,t.selectProductCateList.unshift({id:0,name:"无上级分类"})})},getProductAttrCateList:function(){var t=this;Object(u.d)().then(function(e){for(var r=e.data,a=0;a<r.length;a++){var i=r[a],o=[];if(null!=i.productAttributeList&&i.productAttributeList.length>0)for(var u=0;u<i.productAttributeList.length;u++)o.push({label:i.productAttributeList[u].name,value:i.productAttributeList[u].id});t.filterAttrs.push({label:i.name,value:i.id,children:o})}})},getProductAttributeIdList:function(){for(var t=[],e=0;e<this.filterProductAttrList.length;e++){var r=this.filterProductAttrList[e];null!==r.value&&2===r.value.length&&t.push(r.value[1])}return t},onSubmit:function(t){var e=this;this.$refs[t].validate(function(r){if(!r)return e.$message({message:"验证失败",type:"error",duration:1e3}),!1;e.$confirm("是否提交数据","提示",{confirmButtonText:"确定",cancelButtonText:"取消",type:"warning"}).then(function(){e.isEdit?(e.productCate.productAttributeIdList=e.getProductAttributeIdList(),Object(o.g)(e.$route.query.id,e.productCate).then(function(t){e.$message({message:"修改成功",type:"success",duration:1e3}),e.$router.back()})):(e.productCate.productAttributeIdList=e.getProductAttributeIdList(),Object(o.a)(e.productCate).then(function(r){e.$refs[t].resetFields(),e.resetForm(t),e.$message({message:"提交成功",type:"success",duration:1e3})}))})})},resetForm:function(t){this.$refs[t].resetFields(),this.productCate=i()({},l),this.getSelectProductCateList(),this.filterProductAttrList=[{value:[]}]},removeFilterAttr:function(t){if(1!==this.filterProductAttrList.length){var e=this.filterProductAttrList.indexOf(t);-1!==e&&this.filterProductAttrList.splice(e,1)}else this.$message({message:"至少要留一个",type:"warning",duration:1e3})},handleAddFilterAttr:function(){3!==this.filterProductAttrList.length?this.filterProductAttrList.push({value:null,key:Date.now()}):this.$message({message:"最多添加三个",type:"warning",duration:1e3})}},filters:{filterLabelFilter:function(t){return 0===t?"筛选属性：":""}}},c={render:function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("el-card",{staticClass:"form-container",attrs:{shadow:"never"}},[r("el-form",{ref:"productCateFrom",attrs:{model:t.productCate,rules:t.rules,"label-width":"150px"}},[r("el-form-item",{attrs:{label:"分类名称：",prop:"name"}},[r("el-input",{model:{value:t.productCate.name,callback:function(e){t.$set(t.productCate,"name",e)},expression:"productCate.name"}})],1),t._v(" "),r("el-form-item",{attrs:{label:"上级分类："}},[r("el-select",{attrs:{placeholder:"请选择分类"},model:{value:t.productCate.parentId,callback:function(e){t.$set(t.productCate,"parentId",e)},expression:"productCate.parentId"}},t._l(t.selectProductCateList,function(t){return r("el-option",{key:t.id,attrs:{label:t.name,value:t.id}})}))],1),t._v(" "),r("el-form-item",{attrs:{label:"数量单位："}},[r("el-input",{model:{value:t.productCate.productUnit,callback:function(e){t.$set(t.productCate,"productUnit",e)},expression:"productCate.productUnit"}})],1),t._v(" "),r("el-form-item",{attrs:{label:"排序："}},[r("el-input",{model:{value:t.productCate.sort,callback:function(e){t.$set(t.productCate,"sort",e)},expression:"productCate.sort"}})],1),t._v(" "),r("el-form-item",{attrs:{label:"是否显示："}},[r("el-radio-group",{model:{value:t.productCate.showStatus,callback:function(e){t.$set(t.productCate,"showStatus",e)},expression:"productCate.showStatus"}},[r("el-radio",{attrs:{label:1}},[t._v("是")]),t._v(" "),r("el-radio",{attrs:{label:0}},[t._v("否")])],1)],1),t._v(" "),r("el-form-item",{attrs:{label:"是否显示在导航栏："}},[r("el-radio-group",{model:{value:t.productCate.navStatus,callback:function(e){t.$set(t.productCate,"navStatus",e)},expression:"productCate.navStatus"}},[r("el-radio",{attrs:{label:1}},[t._v("是")]),t._v(" "),r("el-radio",{attrs:{label:0}},[t._v("否")])],1)],1),t._v(" "),r("el-form-item",{attrs:{label:"分类图标："}},[r("single-upload",{model:{value:t.productCate.icon,callback:function(e){t.$set(t.productCate,"icon",e)},expression:"productCate.icon"}})],1),t._v(" "),t._l(t.filterProductAttrList,function(e,a){return r("el-form-item",{key:e.key,attrs:{label:t._f("filterLabelFilter")(a)}},[r("el-cascader",{attrs:{clearable:"",options:t.filterAttrs},model:{value:e.value,callback:function(r){t.$set(e,"value",r)},expression:"filterProductAttr.value"}}),t._v(" "),r("el-button",{staticStyle:{"margin-left":"20px"},on:{click:function(r){r.preventDefault(),t.removeFilterAttr(e)}}},[t._v("删除")])],1)}),t._v(" "),r("el-form-item",[r("el-button",{attrs:{size:"small",type:"primary"},on:{click:function(e){t.handleAddFilterAttr()}}},[t._v("新增")])],1),t._v(" "),r("el-form-item",{attrs:{label:"关键词："}},[r("el-input",{model:{value:t.productCate.keywords,callback:function(e){t.$set(t.productCate,"keywords",e)},expression:"productCate.keywords"}})],1),t._v(" "),r("el-form-item",{attrs:{label:"分类描述："}},[r("el-input",{attrs:{type:"textarea",autosize:!0},model:{value:t.productCate.description,callback:function(e){t.$set(t.productCate,"description",e)},expression:"productCate.description"}})],1),t._v(" "),r("el-form-item",[r("el-button",{attrs:{type:"primary"},on:{click:function(e){t.onSubmit("productCateFrom")}}},[t._v("提交")]),t._v(" "),t.isEdit?t._e():r("el-button",{on:{click:function(e){t.resetForm("productCateFrom")}}},[t._v("重置")])],1)],2)],1)},staticRenderFns:[]};var d=r("VU/8")(n,c,!1,function(t){r("RJ+1")},"data-v-2e421046",null);e.a=d.exports},"RJ+1":function(t,e){},TYh4:function(t,e,r){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a={name:"updateProductCate",components:{ProductCateDetail:r("Gpb+").a}},i={render:function(){var t=this.$createElement;return(this._self._c||t)("product-cate-detail",{attrs:{"is-edit":!0}})},staticRenderFns:[]};var o=r("VU/8")(a,i,!1,function(t){r("i8Nv")},null,null);e.default=o.exports},i8Nv:function(t,e){}});
//# sourceMappingURL=10.9250b81fd4495f9ed70f.js.map