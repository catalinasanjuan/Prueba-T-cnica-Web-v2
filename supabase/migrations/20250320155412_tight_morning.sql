/*
  # Fix User and Profile Creation Trigger

  1. Changes
    - Update handle_new_user function to create both user and profile records
    - Drop existing trigger and recreate with updated function
  
  2. Security
    - Maintains existing RLS policies
    - Function runs with SECURITY DEFINER
*/

-- Drop existing trigger
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;

-- Update function to handle both user and profile creation
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger AS $$
BEGIN
  -- Insert into users table
  INSERT INTO public.users (id, email)
  VALUES (new.id, new.email);
  
  -- Insert into profiles table
  INSERT INTO public.profiles (id)
  VALUES (new.id);
  
  RETURN new;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Recreate trigger
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();