<aura:application extends="force:slds" >
    <!--
    <div>
        <p>
            This text is for application markup!!!
        </p>
    </div>
    <c:Welcome_to_lightning1 />
    <c:Welcome_to_lightning1 displayText="Text2" />
    <c:Welcome_to_lightning1 displayText="Text 3"/>
    <c:Welcome_to_lightning1 displayText="Text 4"/>
-->
    <aura:attribute name="OpenRegistrationForm" type="Boolean" default="false"/>
    <aura:attribute name="ButtonLabel" type="String" default="Open Registration Form"/>
    <lightning:button label="{!v.ButtonLabel}" onclick="{!c.openORcloseRegistrationForm}"/>
    <aura:if isTrue="{!v.OpenRegistrationForm}">
    <c:Registration_Component />
    </aura:if>
  
</aura:application>