<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;

class GuestUserSignUp extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    protected $email;
    public function __construct($Uemail)
    {
        $this->email = $Uemail;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
            //Accepted
            $greeting=__('Your order has been accepted');
            $line=__('And we have setup a Account for you to Track Your orders!');



        $message=(new MailMessage)
            ->greeting($greeting)
            ->subject(__('User Dashboard Credentials'))
            ->line($line)
            ->action(__('Login Now to Track Your Order'), url('/login'));


        //Add order details
        $message->line(__('OCredentials'));
        $message->line(__('________________'));
        $message->line(__('Username: '.$this->email));
        $message->line(__('Password: '.substr($this->email,0,8)));
        $message->line(__('________________'));
        return $message;
//            //Accepted
//            $greeting=__('Your order has been accepted');
//            $line= __('And we have setup a Account for you to Track Your orders!');
//
//
//        $message=(new MailMessage)
//            ->greeting($greeting)
//            ->subject(__('User Dashboard Credentials')
//            ->line($line)
//            ->action(__('Login Now to Track Your Order'), url()));
//
//
//        //Add order details
//        $message->line(__('Credentials'));
//        $message->line(__('________________'));
////        $message->line("Username: ");
////        $message->line("Password: ");
//        $message->line(__('________________'));
//
//        return $message;
    }
    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
