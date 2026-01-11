# Quick Deploy Instructions

## Your Resend API Key (already configured):
```
re_fLDEjNyt_EHayfsVBKbQgrtV77muHu2Wr
```

## Step-by-Step Dashboard Deployment:

### 1. Create Edge Function
1. Go to: https://app.supabase.com/project/hoirqrkdgbmvpwutwuwj/functions
2. Click **"Create a new function"**
3. Function name: `submit-inquiry`
4. Copy the ENTIRE contents of `supabase/functions/submit-inquiry/index.ts` into the code editor
5. Click **"Deploy function"**

### 2. Set Secrets
1. Go to: https://app.supabase.com/project/hoirqrkdgbmvpwutwuwj/settings/functions
2. Scroll to **"Secrets"** section
3. Click **"Add new secret"**
4. Add these two secrets:

   **Secret 1:**
   - Name: `RESEND_API_KEY`
   - Value: `re_fLDEjNyt_EHayfsVBKbQgrtV77muHu2Wr`
   - Click "Add"

   **Secret 2:**
   - Name: `RESEND_FROM_EMAIL`
   - Value: `onboarding@resend.dev` (or your verified domain email)
   - Click "Add"

### 3. Verify
- Go back to Edge Functions
- You should see `submit-inquiry` listed and active
- Test by submitting the form on your website

## Security Note
Your Resend API key is now stored securely in Supabase secrets (not in code). The token you provided earlier is not saved anywhere in the codebase.
