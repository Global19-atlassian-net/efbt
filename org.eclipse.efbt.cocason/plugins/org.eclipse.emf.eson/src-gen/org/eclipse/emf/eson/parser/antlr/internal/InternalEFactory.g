/*
 * generated by Xtext
 */
grammar InternalEFactory;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.eclipse.emf.eson.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.emf.eson.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.emf.eson.services.EFactoryGrammarAccess;

}

@parser::members {

 	private EFactoryGrammarAccess grammarAccess;
 	
    public InternalEFactoryParser(TokenStream input, EFactoryGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Factory";	
   	}
   	
   	@Override
   	protected EFactoryGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleFactory
entryRuleFactory returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFactoryRule()); }
	 iv_ruleFactory=ruleFactory 
	 { $current=$iv_ruleFactory.current; } 
	 EOF 
;

// Rule Factory
ruleFactory returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{ 
	        newCompositeNode(grammarAccess.getFactoryAccess().getImportsNamespaceImportParserRuleCall_0_0()); 
	    }
		lv_imports_0_0=ruleNamespaceImport		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFactoryRule());
	        }
       		add(
       			$current, 
       			"imports",
        		lv_imports_0_0, 
        		"org.eclipse.emf.eson.EFactory.NamespaceImport");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getFactoryAccess().getEPackagesPackageImportParserRuleCall_1_0()); 
	    }
		lv_ePackages_1_0=rulePackageImport		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFactoryRule());
	        }
       		add(
       			$current, 
       			"ePackages",
        		lv_ePackages_1_0, 
        		"org.eclipse.emf.eson.EFactory.PackageImport");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getFactoryAccess().getAnnotationsAnnotationParserRuleCall_2_0()); 
	    }
		lv_annotations_2_0=ruleAnnotation		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFactoryRule());
	        }
       		add(
       			$current, 
       			"annotations",
        		lv_annotations_2_0, 
        		"org.eclipse.emf.eson.EFactory.Annotation");
	        afterParserOrEnumRuleCall();
	    }

)
)*(
(
		{ 
	        newCompositeNode(grammarAccess.getFactoryAccess().getRootNewObjectParserRuleCall_3_0()); 
	    }
		lv_root_3_0=ruleNewObject		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFactoryRule());
	        }
       		set(
       			$current, 
       			"root",
        		lv_root_3_0, 
        		"org.eclipse.emf.eson.EFactory.NewObject");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRulePackageImport
entryRulePackageImport returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getPackageImportRule()); }
	 iv_rulePackageImport=rulePackageImport 
	 { $current=$iv_rulePackageImport.current; } 
	 EOF 
;

// Rule PackageImport
rulePackageImport returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='use' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getPackageImportAccess().getUseKeyword_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getPackageImportRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getPackageImportAccess().getEPackageEPackageCrossReference_1_0()); 
	    }
		ruleStringOrQualifiedNameWithWildcard		{ 
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleNamespaceImport
entryRuleNamespaceImport returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNamespaceImportRule()); }
	 iv_ruleNamespaceImport=ruleNamespaceImport 
	 { $current=$iv_ruleNamespaceImport.current; } 
	 EOF 
;

// Rule NamespaceImport
ruleNamespaceImport returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='import' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getNamespaceImportAccess().getImportKeyword_0());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getNamespaceImportAccess().getImportedNamespaceQualifiedNameWithWildcardParserRuleCall_1_0()); 
	    }
		lv_importedNamespace_1_0=ruleQualifiedNameWithWildcard		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getNamespaceImportRule());
	        }
       		set(
       			$current, 
       			"importedNamespace",
        		lv_importedNamespace_1_0, 
        		"org.eclipse.emf.eson.EFactory.QualifiedNameWithWildcard");
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleAnnotation
entryRuleAnnotation returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAnnotationRule()); }
	 iv_ruleAnnotation=ruleAnnotation 
	 { $current=$iv_ruleAnnotation.current; } 
	 EOF 
;

// Rule Annotation
ruleAnnotation returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:

    { 
        newCompositeNode(grammarAccess.getAnnotationAccess().getCustomNameMappingParserRuleCall()); 
    }
    this_CustomNameMapping_0=ruleCustomNameMapping
    { 
        $current = $this_CustomNameMapping_0.current; 
        afterParserOrEnumRuleCall();
    }

;





// Entry rule entryRuleCustomNameMapping
entryRuleCustomNameMapping returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getCustomNameMappingRule()); }
	 iv_ruleCustomNameMapping=ruleCustomNameMapping 
	 { $current=$iv_ruleCustomNameMapping.current; } 
	 EOF 
;

// Rule CustomNameMapping
ruleCustomNameMapping returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0='@Name' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getCustomNameMappingAccess().getNameKeyword_0());
    }
	otherlv_1='{' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getCustomNameMappingAccess().getLeftCurlyBracketKeyword_1());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getCustomNameMappingRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getCustomNameMappingAccess().getEClassEClassCrossReference_2_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_3='=' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getCustomNameMappingAccess().getEqualsSignKeyword_3());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getCustomNameMappingRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getCustomNameMappingAccess().getNameFeatureEAttributeCrossReference_4_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_5='}' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getCustomNameMappingAccess().getRightCurlyBracketKeyword_5());
    }
)
;





// Entry rule entryRuleFeature
entryRuleFeature returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getFeatureRule()); }
	 iv_ruleFeature=ruleFeature 
	 { $current=$iv_ruleFeature.current; } 
	 EOF 
;

// Rule Feature
ruleFeature returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getFeatureRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getFeatureAccess().getEFeatureEStructuralFeatureCrossReference_0_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)	otherlv_1=':' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getFeatureAccess().getColonKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getFeatureAccess().getValueValueParserRuleCall_2_0()); 
	    }
		lv_value_2_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getFeatureRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_2_0, 
        		"org.eclipse.emf.eson.EFactory.Value");
	        afterParserOrEnumRuleCall();
	    }

)
)?)
;





// Entry rule entryRuleNewObject
entryRuleNewObject returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNewObjectRule()); }
	 iv_ruleNewObject=ruleNewObject 
	 { $current=$iv_ruleNewObject.current; } 
	 EOF 
;

// Rule NewObject
ruleNewObject returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getNewObjectRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getNewObjectAccess().getEClassEClassCrossReference_0_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)(
(
		{ 
	        newCompositeNode(grammarAccess.getNewObjectAccess().getNameValidIDParserRuleCall_1_0()); 
	    }
		lv_name_1_0=ruleValidID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getNewObjectRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_1_0, 
        		"org.eclipse.emf.eson.EFactory.ValidID");
	        afterParserOrEnumRuleCall();
	    }

)
)?	otherlv_2='{' 
    {
    	newLeafNode(otherlv_2, grammarAccess.getNewObjectAccess().getLeftCurlyBracketKeyword_2());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getNewObjectAccess().getFeaturesFeatureParserRuleCall_3_0()); 
	    }
		lv_features_3_0=ruleFeature		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getNewObjectRule());
	        }
       		add(
       			$current, 
       			"features",
        		lv_features_3_0, 
        		"org.eclipse.emf.eson.EFactory.Feature");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_4='}' 
    {
    	newLeafNode(otherlv_4, grammarAccess.getNewObjectAccess().getRightCurlyBracketKeyword_4());
    }
)
;





// Entry rule entryRuleValue
entryRuleValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getValueRule()); }
	 iv_ruleValue=ruleValue 
	 { $current=$iv_ruleValue.current; } 
	 EOF 
;

// Rule Value
ruleValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getValueAccess().getMultiValueParserRuleCall_0()); 
    }
    this_MultiValue_0=ruleMultiValue
    { 
        $current = $this_MultiValue_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getValueAccess().getAttributeParserRuleCall_1()); 
    }
    this_Attribute_1=ruleAttribute
    { 
        $current = $this_Attribute_1.current; 
        afterParserOrEnumRuleCall();
    }

    |(((((
)(
(
		ruleQualifiedName
)
)?(
(
ruleValidID
)
)?	'{' 
))=>((
    {
        $current = forceCreateModelElement(
            grammarAccess.getValueAccess().getNewObjectAction_2_0_0_0(),
            $current);
    }
)(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getValueRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getEClassEClassCrossReference_2_0_0_1_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)?(
(
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getNameValidIDParserRuleCall_2_0_0_2_0()); 
	    }
		lv_name_4_0=ruleValidID		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getValueRule());
	        }
       		set(
       			$current, 
       			"name",
        		lv_name_4_0, 
        		"org.eclipse.emf.eson.EFactory.ValidID");
	        afterParserOrEnumRuleCall();
	    }

)
)?	otherlv_5='{' 
    {
    	newLeafNode(otherlv_5, grammarAccess.getValueAccess().getLeftCurlyBracketKeyword_2_0_0_3());
    }
))(
(
		{ 
	        newCompositeNode(grammarAccess.getValueAccess().getFeaturesFeatureParserRuleCall_2_1_0()); 
	    }
		lv_features_6_0=ruleFeature		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getValueRule());
	        }
       		add(
       			$current, 
       			"features",
        		lv_features_6_0, 
        		"org.eclipse.emf.eson.EFactory.Feature");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_7='}' 
    {
    	newLeafNode(otherlv_7, grammarAccess.getValueAccess().getRightCurlyBracketKeyword_2_2());
    }
(
    {
        $current = forceCreateModelElementAndSet(
            grammarAccess.getValueAccess().getContainmentValueAction_2_3(),
            $current);
    }
))
    |((	ruleReference)=>
    { 
        newCompositeNode(grammarAccess.getValueAccess().getReferenceParserRuleCall_3()); 
    }
    this_Reference_9=ruleReference
    { 
        $current = $this_Reference_9.current; 
        afterParserOrEnumRuleCall();
    }
))
;





// Entry rule entryRuleMultiValue
entryRuleMultiValue returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getMultiValueRule()); }
	 iv_ruleMultiValue=ruleMultiValue 
	 { $current=$iv_ruleMultiValue.current; } 
	 EOF 
;

// Rule MultiValue
ruleMultiValue returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getMultiValueAccess().getMultiValueAction_0(),
            $current);
    }
)	otherlv_1='[' 
    {
    	newLeafNode(otherlv_1, grammarAccess.getMultiValueAccess().getLeftSquareBracketKeyword_1());
    }
(
(
		{ 
	        newCompositeNode(grammarAccess.getMultiValueAccess().getValuesValueParserRuleCall_2_0()); 
	    }
		lv_values_2_0=ruleValue		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getMultiValueRule());
	        }
       		add(
       			$current, 
       			"values",
        		lv_values_2_0, 
        		"org.eclipse.emf.eson.EFactory.Value");
	        afterParserOrEnumRuleCall();
	    }

)
)*	otherlv_3=']' 
    {
    	newLeafNode(otherlv_3, grammarAccess.getMultiValueAccess().getRightSquareBracketKeyword_3());
    }
)
;





// Entry rule entryRuleReference
entryRuleReference returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getReferenceRule()); }
	 iv_ruleReference=ruleReference 
	 { $current=$iv_ruleReference.current; } 
	 EOF 
;

// Rule Reference
ruleReference returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getReferenceRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getReferenceAccess().getValueEObjectCrossReference_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	 iv_ruleAttribute=ruleAttribute 
	 { $current=$iv_ruleAttribute.current; } 
	 EOF 
;

// Rule Attribute
ruleAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getEnumAttributeParserRuleCall_0()); 
    }
    this_EnumAttribute_0=ruleEnumAttribute
    { 
        $current = $this_EnumAttribute_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getStringAttributeParserRuleCall_1()); 
    }
    this_StringAttribute_1=ruleStringAttribute
    { 
        $current = $this_StringAttribute_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getIntegerAttributeParserRuleCall_2()); 
    }
    this_IntegerAttribute_2=ruleIntegerAttribute
    { 
        $current = $this_IntegerAttribute_2.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getBooleanAttributeParserRuleCall_3()); 
    }
    this_BooleanAttribute_3=ruleBooleanAttribute
    { 
        $current = $this_BooleanAttribute_3.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getDoubleAttributeParserRuleCall_4()); 
    }
    this_DoubleAttribute_4=ruleDoubleAttribute
    { 
        $current = $this_DoubleAttribute_4.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getDateAttributeParserRuleCall_5()); 
    }
    this_DateAttribute_5=ruleDateAttribute
    { 
        $current = $this_DateAttribute_5.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getAttributeAccess().getNullAttributeParserRuleCall_6()); 
    }
    this_NullAttribute_6=ruleNullAttribute
    { 
        $current = $this_NullAttribute_6.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleEnumAttribute
entryRuleEnumAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getEnumAttributeRule()); }
	 iv_ruleEnumAttribute=ruleEnumAttribute 
	 { $current=$iv_ruleEnumAttribute.current; } 
	 EOF 
;

// Rule EnumAttribute
ruleEnumAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(	otherlv_0=':' 
    {
    	newLeafNode(otherlv_0, grammarAccess.getEnumAttributeAccess().getColonKeyword_0());
    }
(
(
		{
			if ($current==null) {
	            $current = createModelElement(grammarAccess.getEnumAttributeRule());
	        }
        }
		{ 
	        newCompositeNode(grammarAccess.getEnumAttributeAccess().getValueEEnumLiteralCrossReference_1_0()); 
	    }
		ruleQualifiedName		{ 
	        afterParserOrEnumRuleCall();
	    }

)
))
;





// Entry rule entryRuleStringAttribute
entryRuleStringAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getStringAttributeRule()); }
	 iv_ruleStringAttribute=ruleStringAttribute 
	 { $current=$iv_ruleStringAttribute.current; } 
	 EOF 
;

// Rule StringAttribute
ruleStringAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=RULE_STRING
		{
			newLeafNode(lv_value_0_0, grammarAccess.getStringAttributeAccess().getValueSTRINGTerminalRuleCall_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getStringAttributeRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"org.eclipse.xtext.common.Terminals.STRING");
	    }

)
)
;





// Entry rule entryRuleIntegerAttribute
entryRuleIntegerAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getIntegerAttributeRule()); }
	 iv_ruleIntegerAttribute=ruleIntegerAttribute 
	 { $current=$iv_ruleIntegerAttribute.current; } 
	 EOF 
;

// Rule IntegerAttribute
ruleIntegerAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getIntegerAttributeAccess().getValueLongParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleLong		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getIntegerAttributeRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"org.eclipse.emf.eson.EFactory.Long");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleDoubleAttribute
entryRuleDoubleAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDoubleAttributeRule()); }
	 iv_ruleDoubleAttribute=ruleDoubleAttribute 
	 { $current=$iv_ruleDoubleAttribute.current; } 
	 EOF 
;

// Rule DoubleAttribute
ruleDoubleAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getDoubleAttributeAccess().getValueDoubleParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleDouble		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getDoubleAttributeRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"org.eclipse.emf.eson.EFactory.Double");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleDateAttribute
entryRuleDateAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getDateAttributeRule()); }
	 iv_ruleDateAttribute=ruleDateAttribute 
	 { $current=$iv_ruleDateAttribute.current; } 
	 EOF 
;

// Rule DateAttribute
ruleDateAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getDateAttributeAccess().getValueDateParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleDate		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getDateAttributeRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"org.eclipse.emf.eson.EFactory.Date");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleNullAttribute
entryRuleNullAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNullAttributeRule()); }
	 iv_ruleNullAttribute=ruleNullAttribute 
	 { $current=$iv_ruleNullAttribute.current; } 
	 EOF 
;

// Rule NullAttribute
ruleNullAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		lv_value_0_0=	'NULL' 
    {
        newLeafNode(lv_value_0_0, grammarAccess.getNullAttributeAccess().getValueNULLKeyword_0());
    }
 
	    {
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getNullAttributeRule());
	        }
       		setWithLastConsumed($current, "value", lv_value_0_0, "NULL");
	    }

)
)
;





// Entry rule entryRuleBooleanAttribute
entryRuleBooleanAttribute returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getBooleanAttributeRule()); }
	 iv_ruleBooleanAttribute=ruleBooleanAttribute 
	 { $current=$iv_ruleBooleanAttribute.current; } 
	 EOF 
;

// Rule BooleanAttribute
ruleBooleanAttribute returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
(
		{ 
	        newCompositeNode(grammarAccess.getBooleanAttributeAccess().getValueBooleanParserRuleCall_0()); 
	    }
		lv_value_0_0=ruleBoolean		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getBooleanAttributeRule());
	        }
       		set(
       			$current, 
       			"value",
        		lv_value_0_0, 
        		"org.eclipse.emf.eson.EFactory.Boolean");
	        afterParserOrEnumRuleCall();
	    }

)
)
;





// Entry rule entryRuleStringOrQualifiedNameWithWildcard
entryRuleStringOrQualifiedNameWithWildcard returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getStringOrQualifiedNameWithWildcardRule()); } 
	 iv_ruleStringOrQualifiedNameWithWildcard=ruleStringOrQualifiedNameWithWildcard 
	 { $current=$iv_ruleStringOrQualifiedNameWithWildcard.current.getText(); }  
	 EOF 
;

// Rule StringOrQualifiedNameWithWildcard
ruleStringOrQualifiedNameWithWildcard returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_STRING_0=RULE_STRING    {
		$current.merge(this_STRING_0);
    }

    { 
    newLeafNode(this_STRING_0, grammarAccess.getStringOrQualifiedNameWithWildcardAccess().getSTRINGTerminalRuleCall_0()); 
    }

    |
    { 
        newCompositeNode(grammarAccess.getStringOrQualifiedNameWithWildcardAccess().getQualifiedNameWithWildcardParserRuleCall_1()); 
    }
    this_QualifiedNameWithWildcard_1=ruleQualifiedNameWithWildcard    {
		$current.merge(this_QualifiedNameWithWildcard_1);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)
    ;





// Entry rule entryRuleQualifiedNameWithWildcard
entryRuleQualifiedNameWithWildcard returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getQualifiedNameWithWildcardRule()); } 
	 iv_ruleQualifiedNameWithWildcard=ruleQualifiedNameWithWildcard 
	 { $current=$iv_ruleQualifiedNameWithWildcard.current.getText(); }  
	 EOF 
;

// Rule QualifiedNameWithWildcard
ruleQualifiedNameWithWildcard returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getQualifiedNameWithWildcardAccess().getQualifiedNameParserRuleCall_0()); 
    }
    this_QualifiedName_0=ruleQualifiedName    {
		$current.merge(this_QualifiedName_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }
(
	kw='.*' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getQualifiedNameWithWildcardAccess().getFullStopAsteriskKeyword_1()); 
    }
)?)
    ;





// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); } 
	 iv_ruleQualifiedName=ruleQualifiedName 
	 { $current=$iv_ruleQualifiedName.current.getText(); }  
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_0()); 
    }
    this_ValidID_0=ruleValidID    {
		$current.merge(this_ValidID_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }
(((
	'.' 
)=>
	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); 
    }
)
    { 
        newCompositeNode(grammarAccess.getQualifiedNameAccess().getValidIDParserRuleCall_1_1()); 
    }
    this_ValidID_2=ruleValidID    {
		$current.merge(this_ValidID_2);
    }

    { 
        afterParserOrEnumRuleCall();
    }
)*)
    ;





// Entry rule entryRuleValidID
entryRuleValidID returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getValidIDRule()); } 
	 iv_ruleValidID=ruleValidID 
	 { $current=$iv_ruleValidID.current.getText(); }  
	 EOF 
;

// Rule ValidID
ruleValidID returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_ID_0=RULE_ID    {
		$current.merge(this_ID_0);
    }

    { 
    newLeafNode(this_ID_0, grammarAccess.getValidIDAccess().getIDTerminalRuleCall_0()); 
    }

    |    this_LONG_ID_1=RULE_LONG_ID    {
		$current.merge(this_LONG_ID_1);
    }

    { 
    newLeafNode(this_LONG_ID_1, grammarAccess.getValidIDAccess().getLONG_IDTerminalRuleCall_1()); 
    }

    |    this_LONG_UNSIGNED_2=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_2);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_2, grammarAccess.getValidIDAccess().getLONG_UNSIGNEDTerminalRuleCall_2()); 
    }
)
    ;





// Entry rule entryRuleBoolean
entryRuleBoolean returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getBooleanRule()); } 
	 iv_ruleBoolean=ruleBoolean 
	 { $current=$iv_ruleBoolean.current.getText(); }  
	 EOF 
;

// Rule Boolean
ruleBoolean returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
	kw='true' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getBooleanAccess().getTrueKeyword_0()); 
    }

    |
	kw='false' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getBooleanAccess().getFalseKeyword_1()); 
    }
)
    ;





// Entry rule entryRuleLong
entryRuleLong returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getLongRule()); } 
	 iv_ruleLong=ruleLong 
	 { $current=$iv_ruleLong.current.getText(); }  
	 EOF 
;

// Rule Long
ruleLong returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
	kw='-' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getLongAccess().getHyphenMinusKeyword_0()); 
    }
)?    this_LONG_UNSIGNED_1=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_1);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_1, grammarAccess.getLongAccess().getLONG_UNSIGNEDTerminalRuleCall_1()); 
    }
)
    ;





// Entry rule entryRuleDouble
entryRuleDouble returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getDoubleRule()); } 
	 iv_ruleDouble=ruleDouble 
	 { $current=$iv_ruleDouble.current.getText(); }  
	 EOF 
;

// Rule Double
ruleDouble returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getDoubleAccess().getLongParserRuleCall_0()); 
    }
    this_Long_0=ruleLong    {
		$current.merge(this_Long_0);
    }

    { 
        afterParserOrEnumRuleCall();
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDoubleAccess().getFullStopKeyword_1()); 
    }
    this_LONG_UNSIGNED_2=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_2);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_2, grammarAccess.getDoubleAccess().getLONG_UNSIGNEDTerminalRuleCall_2()); 
    }
)
    ;





// Entry rule entryRuleDate
entryRuleDate returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getDateRule()); } 
	 iv_ruleDate=ruleDate 
	 { $current=$iv_ruleDate.current.getText(); }  
	 EOF 
;

// Rule Date
ruleDate returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(    this_LONG_UNSIGNED_0=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_0);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_0, grammarAccess.getDateAccess().getLONG_UNSIGNEDTerminalRuleCall_0()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDateAccess().getFullStopKeyword_1()); 
    }
    this_LONG_UNSIGNED_2=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_2);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_2, grammarAccess.getDateAccess().getLONG_UNSIGNEDTerminalRuleCall_2()); 
    }

	kw='.' 
    {
        $current.merge(kw);
        newLeafNode(kw, grammarAccess.getDateAccess().getFullStopKeyword_3()); 
    }
    this_LONG_UNSIGNED_4=RULE_LONG_UNSIGNED    {
		$current.merge(this_LONG_UNSIGNED_4);
    }

    { 
    newLeafNode(this_LONG_UNSIGNED_4, grammarAccess.getDateAccess().getLONG_UNSIGNEDTerminalRuleCall_4()); 
    }
)
    ;





RULE_LONG_ID : RULE_LONG_UNSIGNED RULE_ID;

RULE_LONG_UNSIGNED : ('0'..'9')+;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_'|','|'-') ('a'..'z'|'A'..'Z'|'_'|','|'-'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

