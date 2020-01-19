Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2829414202B
	for <lists+linux-um@lfdr.de>; Sun, 19 Jan 2020 22:28:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlWRdSM+aYv+Nao3plhh2iBtuwcPNCHBbiQWWDkNSI8=; b=bt7+X+1cs+ffri
	d7mm5F5dw0aCyFEEOr1teyUUyy9uJkceFkzTCwpJ8htyOT0E0YZj2OXLR+xJAmPK2Ahis7WVOzU9S
	xPwsUokR5kF4jXq9cJf5NNaPfF7C9Tjm00UjsBytz5fcUgQboBYzGYImbFCARYpyz0WxbGH7Jqj0M
	ckHxrNM68dcbIeZXDMIfdqELAB85X1Zfxzy17XRzbGGW4Y/x53LgrLJS5g2Cl9Ry3Yi5/ALer4VUK
	7Q9gSeah5i8GnxXpqUen0HcfUeStf5R39zFMSIeR5Bu77B4ry+HJxiyCuzsfgqK5hsHfC3elW3f6+
	qeVwIX7Q5s5we6Z7PEYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itI6u-0007PO-0T; Sun, 19 Jan 2020 21:27:56 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itI6h-0007Bp-MC
 for linux-um@lists.infradead.org; Sun, 19 Jan 2020 21:27:45 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so27581117wre.10
 for <linux-um@lists.infradead.org>; Sun, 19 Jan 2020 13:27:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AjemFh1kT3nDCNjh4jhxgYQzfSBikjpMPiBbCipFxwo=;
 b=XWo9n1IJD2TCVkpx7YDyQQ3MLeeKrd5HeTV+l7a/ESIX7RsHbgItLb1U2Lvqw/X3H0
 n6LMfauhyc9l9JJ+UEMjOmwADxniENUN+DsWLalZO7GTVrEzE9iwKsTIVjixc5JSq63k
 lxi8nlEGw/40gZO8sWCW5U8J+QtY/ug3OBkSWNgix0eQgufFBHIVTbCZdKi0mTuAwY8v
 RW2aY1Dq6wSSEGGR1TFEuI470YIZMwhxwrgCuyL4PB0gW5kdxnXxb90REwUnWTnP2tOE
 IeuA+LIo2loHv18d93yXok6PzkdaK+pBC3KJJ3umrukCEUKj91XWEsaMlvQpk0KM9SPp
 VDNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AjemFh1kT3nDCNjh4jhxgYQzfSBikjpMPiBbCipFxwo=;
 b=c1radJAQwnB46YIAVzMAWjXPONZJ+yYHcWhTWkpqlQ1mEwXS9F1RP3afFbLeVWRqhH
 dmbQrxvaOmE2X0eWJtuzxJq5QyP4rD2WIuvjfVaC1a3ywBHK+nIvfhqUMIbgryptg+ZB
 urtaAKqrzK0Dlz2EFtoBDeQGSgdMIvKukzi7NUNM+rFHTH+sMsm4x2sXK2qSD/u8SfMD
 3AnxfTlfB+D60UptH3UV0N7ORaFf+WV/JCoAeytqIjQDZRUErsSS3E0EfKwEc+VYZSWH
 JMzfAEhYCpPL2aC3lOs0SNWb3yHiPGSed/TvJRYvDUhGIgbDq6P7iG/pP4FHUEQ6lbL4
 jHRQ==
X-Gm-Message-State: APjAAAX524LUCB14+oo5J8PYrXvKDUUxQ0UkdWKOJYZg05i71t4tEulJ
 v8XIblawK3wjl0xQMS9/l2TnLq2lV7qqfyjxte0=
X-Google-Smtp-Source: APXvYqxc4qJT7zyonVWpOZ5c2WXQcKVffFfJgARuJ4/1QONBqhMriedjvxabXnVUi5pEJb4+a0JD82ykoitPWKV0nF8=
X-Received: by 2002:adf:f606:: with SMTP id t6mr12707494wrp.85.1579469262278; 
 Sun, 19 Jan 2020 13:27:42 -0800 (PST)
MIME-Version: 1.0
References: <20190524220843.27623-1-johannes@sipsolutions.net>
In-Reply-To: <20190524220843.27623-1-johannes@sipsolutions.net>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 19 Jan 2020 22:27:31 +0100
Message-ID: <CAFLxGvxFfa8QNh3_6-EcVFCvkV4Huqf2=bRMiCQdtU+F7Ocq1A@mail.gmail.com>
Subject: Re: [PATCH v2] arch: um: add an option to make serial driver non-raw
To: Johannes Berg <johannes@sipsolutions.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_132743_788757_979CE76A 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: Johannes Berg <johannes.berg@intel.com>, j@w1.fi,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sat, May 25, 2019 at 12:08 AM Johannes Berg
<johannes@sipsolutions.net> wrote:
>
> From: Johannes Berg <johannes.berg@intel.com>
>
> In some cases, for example when the program(s) running inside UML
> isn't/aren't interactive (like the hwsim tests for wpa_supplicant)
> there's really no value in having the serial lines configured to
> be raw as they are now by default. Setting them to non-raw lets
> one abort the whole UML with Ctrl-C, which is really the right
> thing to do in these cases, basically the whole UML instance is
> more like a single (testing) program.
>
> Add a "ssl-non-raw" option to UML to support such a mode.
>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> ---
>  arch/um/drivers/chan_user.h | 2 +-
>  arch/um/drivers/ssl.c       | 8 ++++++++

Applied. Thanks,
//richard

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
