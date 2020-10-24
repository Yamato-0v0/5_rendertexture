Shader "Unlit/NewUnlitShader"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #include "UnityCustomRenderTexture.cginc"

            #pragma vertex CustomRenderTextureVertexShader
            #pragma fragment frag
            // make fog work
            //#pragma multi_compile_fog

            //#include "UnityCG.cginc"

            fixed4 frag(v2f_customrendertexture i) : SV_Target
            {
            // sample the texture
            //fixed4 col = tex2D(_MainTex, i.uv);
            // apply fog
            //UNITY_APPLY_FOG(i.fogCoord, col);
            return fixed4(frac(i.globalTexcoord + _Time),1);
            }
            ENDCG
        }
    }
}
